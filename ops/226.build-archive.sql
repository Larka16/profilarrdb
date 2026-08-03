-- @operation: export
-- @entity: batch
-- @name: Build Archive
-- @exportedAt: 2026-08-03T01:00:00.000Z
-- @opIds: 12573, 12574, 12575, 12576
--
-- Scoring for "Archive" (duplicate of 2160p Balanced): quality-first, remux-preferred, with
-- the exact 8-tier order requested:
--   1 2160p Remux (trusted)      980,000  = 2160p Remux 800k + Remux Tier ~180k
--   2 2160p UHD Bluray (trusted) 850,000  = UHD Bluray 750k + 2160p Balanced Tier ~100k
--   3 2160p Remux (any)          800,000
--   4 2160p UHD Bluray (any)     750,000
--   5 1080p Remux (trusted)      430,000  = 1080p Remux 250k + Remux Tier ~180k
--   6 1080p Bluray (trusted)     400,000  = 1080p Bluray 200k + 1080p tiers ~200k
--   7 1080p Remux (any)          250,000
--   8 1080p Bluray (any)         200,000
--   floor 150,000
-- HIERARCHY (Remux-2160p, Bluray-2160p, Remux-1080p, Bluray-1080p enabled; WEB-DL/WEBRip and
-- 720p-and-below disabled) is set in the UI. Note: Remux Tier is resolution-independent, so
-- it lifts trusted 1080p remux by the same ~180k -- expect to sim-tune a step or two.

-- --- BEGIN op 12573 ( update quality_profile "Archive" )
-- Archival floor: high enough to reject anything below the lowest acceptable tier (1080p
-- Bluray any = 200k). Ceiling 1,000,000.
UPDATE quality_profiles
SET minimum_custom_format_score = 150000,
    upgrade_until_score = 1000000
WHERE name = 'Archive';
-- --- END op 12573

-- --- BEGIN op 12574 ( update quality_profile "Archive" )
-- 2160p band. Un-ban Remux; drop the 2160p WEB-DL source weight so a WEB-DL falls below the
-- floor even if its quality is left enabled (belt-and-suspenders with the hierarchy). Lift
-- Banned UHD Bluray so an unknown-group UHD Bluray (tier 4) is grabbable. Remux Tier is the
-- trusted-remux bump (also applies to 1080p remux below).
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Archive' AND custom_format_name = 'Remux';
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Archive' AND custom_format_name = '2160p WEB-DL';
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Archive' AND custom_format_name = 'Banned UHD Bluray';

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Archive' AND custom_format_name IN ('2160p Remux','UHD Bluray','2160p Balanced Tier 1','2160p Balanced Tier 2','2160p Balanced Tier 3','Remux Tier 1','Remux Tier 2','Remux Tier 3','Remux Tier 4');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('Archive', '2160p Remux', 'all', 800000),
  ('Archive', 'UHD Bluray', 'all', 750000),
  ('Archive', '2160p Balanced Tier 1', 'all', 100000),
  ('Archive', '2160p Balanced Tier 2', 'all', 98000),
  ('Archive', '2160p Balanced Tier 3', 'all', 96000),
  ('Archive', 'Remux Tier 1', 'all', 180000),
  ('Archive', 'Remux Tier 2', 'all', 178000),
  ('Archive', 'Remux Tier 3', 'all', 176000),
  ('Archive', 'Remux Tier 4', 'all', 174000);
-- --- END op 12574

-- --- BEGIN op 12575 ( update quality_profile "Archive" )
-- 1080p band. Drop the 1080p WEB-DL weight (same belt-and-suspenders). 1080p Remux = 250k
-- (trusted +180k Remux Tier -> 430k); 1080p Bluray = 200k unknown, +~200k trusted tiers -> 400k.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Archive' AND custom_format_name = '1080p WEB-DL';

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Archive' AND custom_format_name IN
  ('1080p Remux','1080p Bluray','1080p Balanced Tier 1','1080p Balanced Tier 2',
   '1080p Quality Tier 1','1080p Quality Tier 2','1080p Quality Tier 3','1080p Quality Tier 4','1080p Quality Tier 5','1080p Quality Tier 6');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('Archive', '1080p Remux', 'all', 250000),
  ('Archive', '1080p Bluray', 'all', 200000),
  ('Archive', '1080p Balanced Tier 1', 'all', 200000),
  ('Archive', '1080p Balanced Tier 2', 'all', 198000),
  ('Archive', '1080p Quality Tier 1', 'all', 200000),
  ('Archive', '1080p Quality Tier 2', 'all', 199000),
  ('Archive', '1080p Quality Tier 3', 'all', 198000),
  ('Archive', '1080p Quality Tier 4', 'all', 197000),
  ('Archive', '1080p Quality Tier 5', 'all', 196000),
  ('Archive', '1080p Quality Tier 6', 'all', 195000);
-- --- END op 12575

-- --- BEGIN op 12576 ( update quality_profile "Archive" )
-- Guardrail: keep Banned Remux (rejects the known-bad remux groups -- fake HDR / bloated
-- audio) even though Remux is now wanted. Full Disc and Banned Groups stay banned (from base).
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = 'Archive' AND custom_format_name = 'Banned Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('Archive', 'Banned Remux', 'all', -999999);
-- --- END op 12576
