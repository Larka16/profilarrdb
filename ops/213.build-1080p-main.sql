-- @operation: export
-- @entity: batch
-- @name: Build 1080p Main
-- @exportedAt: 2026-08-02T21:30:00.000Z
-- @opIds: 12553, 12554, 12555, 12556, 12557, 12558, 12559
--
-- Hand-authored transform turning the "1080p Main" clone of "1080p Balanced" into the
-- custom flagship: 1080p-only, either codec (incl. AV1), small-file lean (WEB-DL preferred,
-- Blurays are fallbacks, Remux/Full Disc banned), WEBRip absolutely last, HDR a bonus
-- (DV without HDR fallback excluded), surround preferred as a tiebreaker.
--
-- Scale (live anchors from the clone): trusted source = ~860,000; bans = -999,999;
-- ceiling = 1,000,000; floor = 20,000. Design principle: WEB-DL is a group-independent
-- stream and stays the preferred small-file default (860k). A Bluray is a re-encode
-- (generally larger), so Blurays sit below WEB-DL: an unknown-group Bluray gets only a
-- small floor-clearing fallback weight, while KNOWN/trusted Bluray groups get a real
-- middle-tier bump (well above unknown, still below WEB-DL so WEB-DL stays the default).

-- --- BEGIN op 12553 ( update quality_profile "1080p Main" )
-- Profile level: real floor/ceiling (the clone reset them to 0/0), and make the profile
-- resolution-pure by disabling every sub-1080p (and broadcast) standalone quality. The
-- 1080p group (Bluray/WEBDL/WEBRip-1080p) stays enabled with its cutoff.
UPDATE quality_profiles
SET minimum_custom_format_score = 20000,
    upgrade_until_score = 1000000
WHERE name = '1080p Main';

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '1080p Main'
  AND quality_group_name IS NULL
  AND quality_name IN (
    'Bluray-720p','WEBDL-720p','WEBRip-720p',
    'Bluray-576p','Bluray-480p','WEBDL-480p',
    'DVD','HDTV-1080p','HDTV-720p','SDTV'
  );
-- --- END op 12553

-- --- BEGIN op 12554 ( update quality_profile "1080p Main" )
-- Source eligibility. The Fall fix: give 1080p Bluray a SMALL group-independent fallback
-- weight so an unknown-group Bluray clears the 20,000 floor (grabbable) but sits far below
-- trusted content (~860k) and the 1,000,000 ceiling, so it is never "desired" and Radarr
-- upgrades away from it. Trusted Bluray groups keep their full Balanced-tier weight (not
-- touched). WEBRip is eligible but ranked below even the unknown Bluray fallback.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Main' AND custom_format_name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('1080p Main', '1080p Bluray', 'all', 40000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Main' AND custom_format_name = '1080p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('1080p Main', '1080p WEBRip', 'all', 25000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Main' AND custom_format_name = 'Banned WEBRip';
-- --- END op 12554

-- --- BEGIN op 12555 ( update quality_profile "1080p Main" )
-- Either codec: un-ban HEVC and AV1 (A380 transcodes them fine). Xvid/VP9/VVC/Remux/
-- Full Disc/Upscale stay banned (left untouched).
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Main' AND custom_format_name IN ('h265','x265','AV1');
-- --- END op 12555

-- --- BEGIN op 12556 ( update quality_profile "1080p Main" )
-- HDR as a nice bonus, and the DV-fallback rule (all profiles): a DV release WITHOUT an
-- HDR base layer is excluded; DV WITH fallback nets positive (matches only "Dolby Vision").
-- NOTE: op 127 deleted the standalone HDR10/HLG/PQ custom formats and folded them into the
-- generalized "HDR" CF (now matches HDR/HDR10/HLG/PQ); "HDR10+" stays separate.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Main' AND custom_format_name IN ('Dolby Vision','Dolby Vision (Without Fallback)','HDR','HDR10+');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('1080p Main', 'Dolby Vision (Without Fallback)', 'all', -999999),
  ('1080p Main', 'Dolby Vision', 'all', 800),
  ('1080p Main', 'HDR10+', 'all', 600),
  ('1080p Main', 'HDR', 'all', 300);
-- --- END op 12556

-- --- BEGIN op 12557 ( update quality_profile "1080p Main" )
-- Audio ladder (tiebreaker band, hundreds -- far below the source weights, so it orders
-- equal-source releases but never overrides eligibility). Extended with lossless/object
-- formats for Blurays.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Main' AND custom_format_name IN
  ('TrueHD','Dolby Atmos','DTS-X','DTS-HD MA','FLAC','PCM','Lossless Audio','DTS-HD HRA','Dolby Digital +','DTS-ES','DTS','Dolby Digital','AAC','Opus');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('1080p Main', 'TrueHD', 'all', 800),
  ('1080p Main', 'Dolby Atmos', 'all', 800),
  ('1080p Main', 'DTS-X', 'all', 800),
  ('1080p Main', 'DTS-HD MA', 'all', 800),
  ('1080p Main', 'FLAC', 'all', 800),
  ('1080p Main', 'PCM', 'all', 800),
  ('1080p Main', 'Lossless Audio', 'all', 800),
  ('1080p Main', 'DTS-HD HRA', 'all', 600),
  ('1080p Main', 'Dolby Digital +', 'all', 600),
  ('1080p Main', 'DTS-ES', 'all', 500),
  ('1080p Main', 'DTS', 'all', 500),
  ('1080p Main', 'Dolby Digital', 'all', 400),
  ('1080p Main', 'AAC', 'all', 100),
  ('1080p Main', 'Opus', 'all', 100);
-- --- END op 12557

-- --- BEGIN op 12558 ( update quality_profile "1080p Main" )
-- Reward KNOWN Bluray groups: bump the trusted Bluray tiers to a real middle tier. These
-- stack on the 40,000 unknown-Bluray eligibility, so a trusted Bluray totals ~300k/280k --
-- clearly better than an unknown Bluray (40k), still below any WEB-DL (860k) so WEB-DL
-- stays the small-file default. (Down from Balanced's ~861k/860k, which had made trusted
-- Blurays first-class and outrank WEB-DL.)
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Main' AND custom_format_name IN ('1080p Balanced Tier 1','1080p Balanced Tier 2');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('1080p Main', '1080p Balanced Tier 1', 'all', 260000),
  ('1080p Main', '1080p Balanced Tier 2', 'all', 240000);
-- --- END op 12558

-- --- BEGIN op 12559 ( delete custom_format "zz Round Trip Test" )
-- Cleanup: retire the throwaway round-trip-test CF now that the workflow is validated.
delete from "custom_formats" where "name" = 'zz Round Trip Test';
-- --- END op 12559
