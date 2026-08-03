-- @operation: export
-- @entity: batch
-- @name: Build 2160p Preferred
-- @exportedAt: 2026-08-03T00:10:00.000Z
-- @opIds: 12565, 12566, 12567, 12568
--
-- Scoring for "2160p Preferred" (duplicate of 2160p Balanced): 2160p rated high, 1080p as
-- fallback, tuned so a great 1080p beats a crappy (unknown-group) 4K, while any good 4K
-- still wins. Same per-resolution two-knob shape as the Mains. HIERARCHY (2160p + 1080p
-- only, no WEBRip) is set in the UI; this op only touches scores + floor/ceiling.
--
-- Target bands:
--   2160p WEB-DL (any)        920,000   good 4K, top
--   2160p trusted UHD Bluray  ~490,000  (40k UHD Bluray + ~450k tier)
--   1080p WEB-DL (any)        400,000   "great 1080p"
--   1080p trusted Bluray      ~190-335k (30k + existing 1080p tiers; great-1080p range)
--   2160p unknown UHD Bluray   40,000   "crappy 4K" fallback (below every good 1080p)
--   1080p unknown Bluray       30,000
--   floor 20,000

-- --- BEGIN op 12565 ( update quality_profile "2160p Preferred" )
-- Floor down to 20,000 (the duplicate came in at 200,000) so the Bluray fallbacks clear;
-- ceiling 1,000,000.
UPDATE quality_profiles
SET minimum_custom_format_score = 20000,
    upgrade_until_score = 1000000
WHERE name = '2160p Preferred';
-- --- END op 12565

-- --- BEGIN op 12566 ( update quality_profile "2160p Preferred" )
-- 2160p band: WEB-DL stays the preferred top (920k, untouched). Demote UHD Bluray to a
-- 40,000 fallback (unknown 4K = "crappy 4K", grabbable) and lift Banned UHD Bluray so it
-- isn't rejected. Trusted 4K groups become a middle tier via reduced Balanced tiers
-- (40k + 450k = ~490k), clearly below WEB-DL, clearly above the 1080p band.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Preferred' AND custom_format_name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('2160p Preferred', 'UHD Bluray', 'all', 40000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Preferred' AND custom_format_name = 'Banned UHD Bluray';

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Preferred' AND custom_format_name IN ('2160p Balanced Tier 1','2160p Balanced Tier 2','2160p Balanced Tier 3');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('2160p Preferred', '2160p Balanced Tier 1', 'all', 450000),
  ('2160p Preferred', '2160p Balanced Tier 2', 'all', 445000),
  ('2160p Preferred', '2160p Balanced Tier 3', 'all', 440000);
-- --- END op 12566

-- --- BEGIN op 12567 ( update quality_profile "2160p Preferred" )
-- 1080p fallback band: WEB-DL becomes the "great 1080p" top at 400,000 (well below the 4K
-- band, well above crappy 4K). Demote 1080p Bluray to a 30,000 unknown fallback (was 700k
-- group-independent). Existing 1080p Balanced/Quality tiers are left, so trusted 1080p
-- groups land in the ~190-335k great-1080p range on top of the 30k eligibility.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Preferred' AND custom_format_name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('2160p Preferred', '1080p WEB-DL', 'all', 400000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Preferred' AND custom_format_name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('2160p Preferred', '1080p Bluray', 'all', 30000);
-- --- END op 12567

-- --- BEGIN op 12568 ( update quality_profile "2160p Preferred" )
-- Either codec: un-ban AV1 (HDR/DV rule, SDR=0, audio, Remux/Full-Disc/Banned-Groups bans
-- left as the base already had them).
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Preferred' AND custom_format_name = 'AV1';
-- --- END op 12568
