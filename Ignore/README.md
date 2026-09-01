# profilarrdb — my Dictionarry fork (PCD 2.0)

My GitHub fork (`Larka16/profilarrdb`) of `Dictionarry-Hub/database`, linked into **Profilarr
v2**. Upstream owns the formats/regex/release-group tiers; I run my own custom quality
profiles on top and keep upstream synced for the trusted-release data.

> Private notes in `Ignore/` (git-ignored). See `Handoff` (status + workflow + lessons) and
> `CustomProfile.md` (per-profile scoring).

---

## How this database works (PCD 2.0)

```
pcd.json   # manifest (name, version, schema dependency)
ops/       # sequential SQL migrations, 0.rosettarr.sql -> 229.*.sql, replayed in order
Ignore/    # my private notes (git-ignored)
```
Profilarr replays `ops/*.sql` to build a SQLite DB. Ops are either **UI exports** (Profilarr's
*Duplicate*/edit actions) or **hand-authored SQL** (both apply cleanly). Key tables:
`quality_profiles`, `quality_groups`/`quality_group_members`/`quality_profile_qualities`
(hierarchy), `quality_profile_custom_formats` (scores), `custom_formats`+conditions, `regular_expressions`.

## The workflow that works
- **Hierarchy** (which qualities enabled/ordered) → in the **Profilarr UI** (drift-prone in SQL).
- **Scoring** (`quality_profile_custom_formats`) → **hand-authored SQL ops** (robust; keyed by CF name).
- Build a profile: *Duplicate* a base in the UI (copies scores), set hierarchy, push; then the
  scoring transform is written as an op against the live values.
- Upstream stays clean because I only add profiles + score existing CFs — I don't edit
  upstream's CF/regex definitions, so their group-tier/ban/regex updates flow through.

---

## My profiles (built)

- **1080p Main** — default; 1080p-only, WEB-DL preferred (small files), Bluray fallback, WEBRip last
- **2160p Main** — same at 4K, 2160p-only, SDR allowed but below HDR
- **2160p Preferred** — 2160p high, 1080p fallback (a great 1080p beats a crappy 4K)
- **1080p Preferred** — 1080p high, 2160p fallback (mirror)
- **Archive** — remux-first, 8-tier quality ladder, high floor (rejects WEB-DL/junk)
- **Any** — permissive catch-all, strict resolution ladder, low floor (grabs the best available)

All: either codec incl. AV1; Remux/Full Disc banned except Archive/Any; `Banned Groups` kept;
DV-without-fallback excluded, DV-with-fallback + HDR a bonus; **surround (5.1/7.1) beats stereo
even lossless**, streaming vendor is only a tiebreaker. Stock Dictionarry profiles deleted
except `1080p Balanced` / `2160p Balanced` (the clone bases).

---

## Editing workflow
1. Scores: edit the profile in Profilarr (or hand-author an op); commit the `ops/N.*.sql`.
2. **Simulate** against real release names before syncing.
3. Sync to Radarr/Sonarr; re-verify floor/upgrade-until landed (they've lagged before).
4. Reassign library items to the profile (syncing doesn't move items onto it).

## Upstream sync
`Ignore/syncupstream.yml` — draft GitHub Actions merge of `Dictionarry-Hub/database`,
abort-on-conflict. Not yet installed under `.github/workflows/`; the op-stream merge behaviour
(our hand-authored ops vs upstream's) still needs an empirical test before enabling. Manual:

```bash
git remote add upstream https://github.com/Dictionarry-Hub/database.git   # once
git fetch upstream && git merge --no-edit upstream/v2 && git push          # confirm branch
```
