-- @operation: export
-- @entity: batch
-- @name: Build 1080p Preferred
-- @exportedAt: 2026-08-03T00:35:00.000Z
-- @opIds: 12569, 12570, 12571, 12572
--
-- Scoring for "1080p Preferred" (duplicate of 2160p Balanced): 1080p rated high, 2160p as
-- fallback -- the mirror of 2160p Preferred. Tuned so a great 4K beats a crappy 1080p, while
-- a good 1080p still beats a great 4K. HIERARCHY (1080p + 2160p only, no WEBRip) is set in
-- the UI; this op only touches scores + floor/ceiling.
--
-- Target bands:
--   1080p WEB-DL (any)        860,000   good 1080p, top
--   1080p trusted Bluray     ~490,000  (40k + ~450k tiers)
--   2160p WEB-DL (any)        400,000   "great 4K"
--   2160p trusted UHD Bluray ~250,000  (30k + ~220k tiers)
--   1080p unknown Bluray       40,000   "crappy 1080p" fallback
--   2160p unknown UHD Bluray   30,000
--   floor 20,000

-- --- BEGIN op 12569 ( update quality_profile "1080p Preferred" )
UPDATE quality_profiles
SET minimum_custom_format_score = 20000,
    upgrade_until_score = 1000000
WHERE name = '1080p Preferred';
-- --- END op 12569

-- --- BEGIN op 12570 ( update quality_profile "1080p Preferred" )
-- 1080p band (top). WEB-DL to 860k. Unknown 1080p Bluray demoted to 40k ("crappy 1080p").
-- Trusted 1080p groups (Balanced + Quality/GPPi tiers) raised to ~450k so a trusted 1080p
-- Bluray totals ~490k -- just under WEB-DL, comfortably above the whole 2160p fallback band.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('1080p Preferred', '1080p WEB-DL', 'all', 860000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('1080p Preferred', '1080p Bluray', 'all', 40000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name IN
  ('1080p Balanced Tier 1','1080p Balanced Tier 2',
   '1080p Quality Tier 1','1080p Quality Tier 2','1080p Quality Tier 3','1080p Quality Tier 4','1080p Quality Tier 5','1080p Quality Tier 6');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('1080p Preferred', '1080p Balanced Tier 1', 'all', 450000),
  ('1080p Preferred', '1080p Balanced Tier 2', 'all', 448000),
  ('1080p Preferred', '1080p Quality Tier 1', 'all', 452000),
  ('1080p Preferred', '1080p Quality Tier 2', 'all', 451000),
  ('1080p Preferred', '1080p Quality Tier 3', 'all', 450000),
  ('1080p Preferred', '1080p Quality Tier 4', 'all', 449000),
  ('1080p Preferred', '1080p Quality Tier 5', 'all', 448000),
  ('1080p Preferred', '1080p Quality Tier 6', 'all', 447000);
-- --- END op 12570

-- --- BEGIN op 12571 ( update quality_profile "1080p Preferred" )
-- 2160p band (fallback / "great 4K"). WEB-DL to 400k. Unknown UHD Bluray to 30k + lift
-- Banned UHD Bluray. Trusted 4K tiers reduced to ~220k so a trusted UHD Bluray totals ~250k.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name = '2160p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('1080p Preferred', '2160p WEB-DL', 'all', 400000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('1080p Preferred', 'UHD Bluray', 'all', 30000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name = 'Banned UHD Bluray';

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name IN ('2160p Balanced Tier 1','2160p Balanced Tier 2','2160p Balanced Tier 3');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('1080p Preferred', '2160p Balanced Tier 1', 'all', 220000),
  ('1080p Preferred', '2160p Balanced Tier 2', 'all', 218000),
  ('1080p Preferred', '2160p Balanced Tier 3', 'all', 216000);
-- --- END op 12571

-- --- BEGIN op 12572 ( update quality_profile "1080p Preferred" )
-- Either codec: un-ban AV1.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Preferred' AND custom_format_name = 'AV1';
-- --- END op 12572
