# Custom Profile Suite — Scoring Reference (as built)

Authoritative scoring notes for the six-profile suite on this Dictionarry fork (PCD 2.0).
Numbers are the values actually applied (ops 213–229). All are per-profile rows in
`quality_profile_custom_formats`; tune by editing scores (they're keyed by CF name).

> Read live values from a fresh **clone export**, never `0.rosettarr.sql` (stale initial
> import). Confirm a CF exists before referencing it (FK error otherwise).

---

## Live anchors (from clone exports)

| Thing | 1080p Balanced base | 2160p Balanced base |
|---|---|---|
| Source WEB-DL | `1080p WEB-DL` 860,000 | `2160p WEB-DL` 920,000 |
| Bluray (group-independent) | `1080p Bluray` 700k* | `UHD Bluray` 840,000 |
| Trusted Bluray tiers | `1080p Balanced Tier 1/2` ~161k/160k; `1080p Quality Tier` ~180k | `2160p Balanced Tier 1/2/3` ~922k/921k/920k |
| Bans | -999,999 | -999,999 |
| Ceiling (DB-wide, op 35) | 1,000,000 | 1,000,000 |
| Floor as duplicated | ~20k / 0 | **200,000** (reset in transforms) |

`arr_type`: sources & group tiers are `radarr`+`sonarr`; audio/HDR/bans/WEB-DL tiers are `all`.
*In `1080p Balanced` itself `1080p Bluray` is unscored (the ZoroSenpai bug); the 700k value is
its weight inside `2160p Balanced`'s 1080p fallback band.

## CFs deleted / renamed since import (don't reference old names)
- **Deleted:** `HDR10`, `HLG`, `PQ` (folded into generalized `HDR`; `HDR10+` separate),
  `2160p Bluray` (use `UHD Bluray`), `Remux (Source)`, `Remux (Quality Match)`, `DS4K`,
  `Internal`, `Not English`, `Not Only English`, `TV Extras`, `Upscaled` (sonarr; `Upscale`
  radarr stays), `QxR WEBs`, `TAoE WEBs`, `2160p Efficient TV WEB Tier 1`, all `Anime * Tier`.
- **Renamed:** `SD Quality Tier 1/2`→`DVD Quality Tier 1/2`; `ASL`→`Audio Description`;
  `No Release Group`→`Release Group (Missing)`; `*(h264)`/`*(x264)`→`*(Efficient)`.
- HDR CF set now: `HDR`, `HDR10+`, `Dolby Vision`, `Dolby Vision (Without Fallback)`.

---

## Cross-cutting model (all profiles)

**Two knobs.** Source weight = eligibility (huge, ~860–920k). Group tier = preference bump on
top (small). WEB-DL is group-independent (stream pull); a Bluray is a re-encode, so unknown
Blurays get only a small fallback weight while trusted-group Blurays get a middle-tier bump.

**Codec:** x264/x265/HEVC/AV1 all allowed (0). Remux + Full Disc banned except Archive/Any.

**HDR (DV rule):** `Dolby Vision (Without Fallback)` = -999,999 (excluded). `Dolby Vision`
(with fallback) wanted. Bonus ladder (small, tiebreaker band): 1080p DV 800 / HDR10+ 600 /
HDR 300; 2160p DV 3000 / HDR10+ 2000 / HDR 1000. `SDR` = 0 (allowed, below HDR).

**Audio (op 229):** channel dominates codec dominates vendor.
- `7.1 Surround` +3000, `5.1 Surround` +2000 (new CFs from the 5.1/7.1 regex), stereo +0.
- Codec ladder: lossless/object (TrueHD, Atmos, DTS-X, DTS-HD MA, FLAC, PCM) ~800 (1080p) /
  ~1200–1600 (2160p); lossy surround (DD+, DTS) ~500–600; DD 400; AAC/Opus 100.
- Streaming vendors (`AMZN`/`DSNP`/`ATVP`/`HMAX`/`MAX`/`iT`/`NF`/`MA`) = flat **50**.
- All far below source weight → audio never overrides resolution.

**Floor** gates the low tail; **ceiling 1,000,000** = always upgrade toward the best.
`Banned Groups` -999,999 kept everywhere (upstream-synced junk list).

---

## Per-profile scoring (as built)

### 1080p Main (op 213) — 1080p-only, small-file default
```
1080p WEB-DL 860,000        (preferred; smaller/consistent)
1080p Bluray (trusted) ~300,000   = 40k source + 260k/240k Balanced tier
1080p Bluray (unknown)   40,000   fallback (The Fall fix)
1080p WEBRip             25,000   absolutely last
floor 20,000 · ceiling 1,000,000
```
Un-banned h265/x265/AV1; lifted `Banned WEBRip`. Remux/Full Disc/Upscale/Xvid banned.

### 2160p Main (op 217) — 2160p-only
```
2160p WEB-DL 920,000
UHD Bluray (trusted) ~300,000   = 40k + 260k/250k/240k Balanced tiers
UHD Bluray (unknown)  40,000    (lifted Banned UHD Bluray)
floor 20,000 · ceiling 1,000,000 · SDR allowed (0)
```

### 2160p Preferred (op 221) — 2160p high / 1080p fallback
```
2160p WEB-DL 920,000 · trusted UHD BR ~490,000 (40k + 450k tiers)
1080p WEB-DL 400,000 ("great 1080p") · trusted 1080p BR ~190–335k (tiers left)
2160p UHD BR unknown 40,000 ("crappy 4K") · 1080p BR unknown 30,000
floor 20,000. No WEBRip. Great 1080p beats crappy 4K; good 4K beats great 1080p.
```

### 1080p Preferred (op 224) — 1080p high / 2160p fallback (mirror)
```
1080p WEB-DL 860,000 · trusted 1080p BR ~490,000 (40k + ~450k Balanced+Quality tiers)
2160p WEB-DL 400,000 ("great 4K") · trusted UHD BR ~250,000 (30k + ~220k tiers)
1080p BR unknown 40,000 ("crappy 1080p") · UHD BR unknown 30,000
floor 20,000. No WEBRip.
```

### Archive (op 226) — remux-first, quality gate
```
1 trusted 2160p Remux  980,000 (= 2160p Remux 800k + Remux Tier ~180k)
2 trusted UHD Bluray    850,000 (= UHD Bluray 750k + 2160p Balanced Tier ~100k)
3 any 2160p Remux       800,000
4 any UHD Bluray        750,000 (lifted Banned UHD Bluray)
5 trusted 1080p Remux   430,000 (= 1080p Remux 250k + Remux Tier ~180k)
6 trusted 1080p Bluray  400,000 (= 1080p Bluray 200k + 1080p tiers ~200k)
7 any 1080p Remux       250,000
8 any 1080p Bluray      200,000
floor 150,000 (rejects WEB-DL/WEBRip/low). Remux un-banned; Banned Remux/Full Disc kept.
WEB-DL source weights dropped (belt-and-suspenders below floor).
```
Caveat: `Remux Tier` is resolution-independent (+~180k to both 2160p & 1080p trusted remux).

### Any (op 228) — permissive catch-all, strict resolution ladder
```
2160p: Remux 960k · Bluray 940k · WEB-DL 920k
1080p: Remux 760k · Bluray 740k · WEB-DL 720k · WEBRip 700k · HDTV 680k
720p:  Bluray 560k · WEB-DL 540k · WEBRip 520k · HDTV 500k
480/576: 576p 380k · 480p BR 360k · 480p WEB 340k · DVD 200k · SDTV 100k
floor 1 · group tiers flattened · bans lifted except Banned Groups / DV-no-fallback / Upscale / Full Disc
```
Rewritten because the inherited base ladder was non-monotonic (1080p WEB-DL 860k > UHD Bluray
840k). Now any higher resolution always outscores any lower one → always picks best available.

---

## Validation checklist
- **1080p Main:** unknown-group 1080p Bluray (The Fall) clears floor (~40k, was rejected);
  WEB-DL beats it; trusted Bluray middle-tier; a 5.1 beats a 2.0 (op 229).
- **Preferred pair:** great 1080p beats crappy (unknown) 4K; good 4K beats great 1080p.
- **Archive:** the 8-tier order holds; no WEB-DL/WEBRip qualifies (floor 150k + dropped weights).
- **Any:** any 2160p > any 1080p > any 720p …; grabs the lowest only when nothing better.
- **Audio (all):** Disney DD+ 5.1 beats Amazon DD+ 2.0; surround beats lossless stereo.
