-- @operation: export
-- @entity: batch
-- @name: Fixing UI changes, cleaing up extra profiles.
-- @exportedAt: 2026-08-03T00:08:41.697Z
-- @opIds: 2512, 2513, 2514, 2515, 2516, 2517, 2518, 2519, 2520, 2521, 2522

-- --- BEGIN op 2512 ( update quality_profile "2160p Main" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 2512

-- --- BEGIN op 2513 ( update quality_profile "1080p Main" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 2513

-- --- BEGIN op 2514 ( update quality_profile "1080p Main" )
UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2514

-- --- BEGIN op 2515 ( delete quality_profile "1080p Compact" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Compact';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Compact';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Compact';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Compact';

delete from "quality_groups" where "quality_profile_name" = '1080p Compact';

delete from "quality_profiles" where "name" = '1080p Compact';
-- --- END op 2515

-- --- BEGIN op 2516 ( delete quality_profile "1080p Efficient" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Efficient';

delete from "quality_groups" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profiles" where "name" = '1080p Efficient';
-- --- END op 2516

-- --- BEGIN op 2517 ( delete quality_profile "1080p Quality" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Quality';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Quality';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Quality';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Quality';

delete from "quality_groups" where "quality_profile_name" = '1080p Quality';

delete from "quality_profiles" where "name" = '1080p Quality';
-- --- END op 2517

-- --- BEGIN op 2518 ( delete quality_profile "1080p Quality HDR" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_groups" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profiles" where "name" = '1080p Quality HDR';
-- --- END op 2518

-- --- BEGIN op 2519 ( delete quality_profile "1080p Remux" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Remux';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Remux';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Remux';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Remux';

delete from "quality_groups" where "quality_profile_name" = '1080p Remux';

delete from "quality_profiles" where "name" = '1080p Remux';
-- --- END op 2519

-- --- BEGIN op 2520 ( delete quality_profile "2160p Efficient" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Efficient';

delete from "quality_groups" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profiles" where "name" = '2160p Efficient';
-- --- END op 2520

-- --- BEGIN op 2521 ( delete quality_profile "2160p Quality" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Quality';

delete from "quality_groups" where "quality_profile_name" = '2160p Quality';

delete from "quality_profiles" where "name" = '2160p Quality';
-- --- END op 2521

-- --- BEGIN op 2522 ( delete quality_profile "2160p Remux" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Remux';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Remux';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Remux';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Remux';

delete from "quality_groups" where "quality_profile_name" = '2160p Remux';

delete from "quality_profiles" where "name" = '2160p Remux';
-- --- END op 2522
