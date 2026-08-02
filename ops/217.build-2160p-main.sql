-- @operation: export
-- @entity: batch
-- @name: Build 2160p Main
-- @exportedAt: 2026-08-02T22:20:00.000Z
-- @opIds: 12561, 12562, 12563, 12564
--
-- Transform the "2160p Main" duplicate of "2160p Balanced" into the 4K analog of 1080p
-- Main: 2160p-only, WEB-DL preferred (smaller 4K files), UHD Bluray demoted to a fallback
-- (unknown = last resort, known groups = middle tier), no WEBRip (no 4K WEBRip CF anyway),
-- HDR a bonus with DV-without-fallback excluded (already true in the base), 4K SDR allowed
-- but outranked by HDR (already true: SDR = 0, HDR/DV = +1000..3000), AV1 allowed.
--
-- Live 2160p anchors (from the duplicate): 2160p WEB-DL = 920,000; UHD Bluray = 840,000;
-- 2160p Balanced Tier 1/2/3 ~= 920-924k; bans = -999,999; DV = 3000 / DV(no fallback) =
-- -999,999; floor came across as 200,000. Ceiling set to 1,000,000.

-- --- BEGIN op 12561 ( update quality_profile "2160p Main" )
-- Profile level: floor down to 20,000 (so the UHD Bluray fallback can clear it -- the base
-- ran a 200,000 floor), ceiling 1,000,000. Then trim the hierarchy to 2160p-only: pull
-- every sub-2160p quality out of the "2160p Balanced" group and park it as a disabled
-- standalone quality, leaving only Bluray-2160p + WEBDL-2160p enabled (with the cutoff).
UPDATE quality_profiles
SET minimum_custom_format_score = 20000,
    upgrade_until_score = 1000000
WHERE name = '2160p Main';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES
  ('2160p Main', 'Bluray-1080p', NULL, 17, 0, 0),
  ('2160p Main', 'WEBDL-1080p', NULL, 18, 0, 0),
  ('2160p Main', 'WEBRip-1080p', NULL, 19, 0, 0),
  ('2160p Main', 'Bluray-720p', NULL, 20, 0, 0),
  ('2160p Main', 'WEBDL-720p', NULL, 21, 0, 0),
  ('2160p Main', 'WEBRip-720p', NULL, 22, 0, 0),
  ('2160p Main', 'Bluray-576p', NULL, 23, 0, 0),
  ('2160p Main', 'Bluray-480p', NULL, 24, 0, 0),
  ('2160p Main', 'WEBDL-480p', NULL, 25, 0, 0),
  ('2160p Main', 'DVD', NULL, 26, 0, 0),
  ('2160p Main', 'HDTV-1080p', NULL, 27, 0, 0),
  ('2160p Main', 'HDTV-720p', NULL, 28, 0, 0),
  ('2160p Main', 'SDTV', NULL, 29, 0, 0);

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
  AND quality_name IN (
    'Bluray-1080p','WEBDL-1080p','WEBRip-1080p',
    'Bluray-720p','WEBDL-720p','WEBRip-720p',
    'Bluray-576p','Bluray-480p','WEBDL-480p',
    'DVD','HDTV-1080p','HDTV-720p','SDTV'
  );
-- --- END op 12561

-- --- BEGIN op 12562 ( update quality_profile "2160p Main" )
-- Source eligibility. Demote UHD Bluray from its group-independent 840k to a 40,000 fallback
-- (unknown-group 4K Bluray = grabbable last resort, not preferred over a smaller WEB-DL),
-- and lift "Banned UHD Bluray" so an unknown-group UHD Bluray is no longer banned. 2160p
-- WEB-DL stays 920,000 (the preferred default). No WEBRip at 4K.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Main' AND custom_format_name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES ('2160p Main', 'UHD Bluray', 'all', 40000);

DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Main' AND custom_format_name = 'Banned UHD Bluray';
-- --- END op 12562

-- --- BEGIN op 12563 ( update quality_profile "2160p Main" )
-- Reward KNOWN UHD Bluray groups as a middle tier (stack on the 40k eligibility -> ~300k),
-- clearly above unknown (40k), still well below WEB-DL (920k) so WEB-DL stays the default.
-- (Down from the base's ~920-924k, which had made trusted UHD Blurays first-class.)
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Main' AND custom_format_name IN ('2160p Balanced Tier 1','2160p Balanced Tier 2','2160p Balanced Tier 3');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('2160p Main', '2160p Balanced Tier 1', 'all', 260000),
  ('2160p Main', '2160p Balanced Tier 2', 'all', 250000),
  ('2160p Main', '2160p Balanced Tier 3', 'all', 240000);
-- --- END op 12563

-- --- BEGIN op 12564 ( update quality_profile "2160p Main" )
-- Either codec: un-ban AV1 (A380 decodes it). HDR/DV rule, SDR=0, audio ladder, Remux/
-- Full Disc/Upscale bans, and Banned Groups are all left as the base already had them.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Main' AND custom_format_name = 'AV1';
-- --- END op 12564
