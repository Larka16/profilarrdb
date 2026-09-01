-- @operation: export
-- @entity: batch
-- @name: Delete empty 2160p Main
-- @exportedAt: 2026-08-02T22:00:00.000Z
-- @opIds: 12560

-- --- BEGIN op 12560 ( delete quality_profile "2160p Main" )
-- The "2160p Main" from op 214 was created via New Profile, so it has the quality structure
-- but NO custom-format scores. Remove it cleanly (children first, then the profile row) so
-- "2160p Balanced" can be DUPLICATED into that name properly, carrying its full scoring.
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Main';
DELETE FROM quality_group_members WHERE quality_profile_name = '2160p Main';
DELETE FROM quality_profile_qualities WHERE quality_profile_name = '2160p Main';
DELETE FROM quality_groups WHERE quality_profile_name = '2160p Main';
DELETE FROM quality_profile_tags WHERE quality_profile_name = '2160p Main';
DELETE FROM quality_profile_languages WHERE quality_profile_name = '2160p Main';
DELETE FROM quality_profiles WHERE name = '2160p Main';
-- --- END op 12560
