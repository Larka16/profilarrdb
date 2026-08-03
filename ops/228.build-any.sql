-- @operation: export
-- @entity: batch
-- @name: Build Any
-- @exportedAt: 2026-08-03T01:30:00.000Z
-- @opIds: 12577, 12578, 12579, 12580
--
-- Scoring for "Any" (duplicate of 2160p Balanced): a permissive catch-all that always picks
-- the BEST AVAILABLE. The inherited 2160p-Balanced ladder is NOT monotonic by resolution
-- (e.g. 1080p WEB-DL 860k outscored UHD Bluray 840k), so we rewrite it into a strict
-- resolution ladder and flatten the big group tiers (Any ranks by resolution/source, not
-- group trust). Everything eligible; floor 1; ceiling 1,000,000 so it upgrades to the top.

-- --- BEGIN op 12577 ( update quality_profile "Any" )
UPDATE quality_profiles
SET minimum_custom_format_score = 1,
    upgrade_until_score = 1000000
WHERE name = 'Any';
-- --- END op 12577

-- --- BEGIN op 12578 ( update quality_profile "Any" )
-- Strict resolution ladder (all arr). Within each resolution band: Remux > Bluray > WEB-DL >
-- WEBRip > HDTV. ~160k gaps between bands so nothing lower-res can outscore a higher res.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Any' AND custom_format_name IN (
  '2160p Remux','UHD Bluray','2160p WEB-DL',
  '1080p Remux','1080p Bluray','1080p WEB-DL','1080p WEBRip','1080p HDTV',
  '720p Bluray','720p WEB-DL','720p WEBRip','720p HDTV',
  '576p Bluray','480p Bluray','480p WEB-DL','DVD','SDTV');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('Any', '2160p Remux', 'all', 960000),
  ('Any', 'UHD Bluray', 'all', 940000),
  ('Any', '2160p WEB-DL', 'all', 920000),
  ('Any', '1080p Remux', 'all', 760000),
  ('Any', '1080p Bluray', 'all', 740000),
  ('Any', '1080p WEB-DL', 'all', 720000),
  ('Any', '1080p WEBRip', 'all', 700000),
  ('Any', '1080p HDTV', 'all', 680000),
  ('Any', '720p Bluray', 'all', 560000),
  ('Any', '720p WEB-DL', 'all', 540000),
  ('Any', '720p WEBRip', 'all', 520000),
  ('Any', '720p HDTV', 'all', 500000),
  ('Any', '576p Bluray', 'all', 380000),
  ('Any', '480p Bluray', 'all', 360000),
  ('Any', '480p WEB-DL', 'all', 340000),
  ('Any', 'DVD', 'all', 200000),
  ('Any', 'SDTV', 'all', 100000);
-- --- END op 12578

-- --- BEGIN op 12579 ( update quality_profile "Any" )
-- Flatten the big group/remux tiers so trusted-group bonuses can't push a lower resolution
-- above a higher one. Any ranks by resolution/source only.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Any' AND custom_format_name IN (
  '2160p Balanced Tier 1','2160p Balanced Tier 2','2160p Balanced Tier 3',
  '1080p Balanced Tier 1','1080p Balanced Tier 2',
  '1080p Quality Tier 1','1080p Quality Tier 2','1080p Quality Tier 3','1080p Quality Tier 4','1080p Quality Tier 5','1080p Quality Tier 6',
  'Remux Tier 1','Remux Tier 2','Remux Tier 3','Remux Tier 4');
-- --- END op 12579

-- --- BEGIN op 12580 ( update quality_profile "Any" )
-- Open the gates: un-ban Remux, and lift the source/codec bans so any source, codec, or
-- group is eligible. Guardrails (Banned Groups, Dolby Vision (Without Fallback), Upscale,
-- Full Disc) stay banned.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Any' AND custom_format_name IN (
  'Remux','Banned UHD Bluray','Banned WEBRip','AV1','h265','x265');
-- --- END op 12580
