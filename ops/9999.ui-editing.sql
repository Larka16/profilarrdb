-- @operation: export
-- @entity: batch
-- @name: UI editing
-- @exportedAt: 2026-08-18T01:21:22.444Z
-- @opIds: 4142, 4143, 4144, 4145, 4146, 4147, 4148

-- --- BEGIN op 4142 ( update radarr_naming "Radarr" )
update "radarr_naming" set "movie_folder_format" = '{Movie CleanTitle} ({Release Year})' where "name" = 'Radarr' and "movie_folder_format" = '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}';
-- --- END op 4142

-- --- BEGIN op 4143 ( update radarr_naming "Radarr / Editionless" )
update "radarr_naming" set "movie_format" = '{Movie CleanTitle} {(Release Year)}{[Edition Tags]}{[MediaInfo VideoDynamicRangeType]}' where "name" = 'Radarr / Editionless' and "movie_format" = '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {[Edition Tags]}{[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}';
-- --- END op 4143

-- --- BEGIN op 4144 ( update radarr_naming "Radarr / Editionless" )
update "radarr_naming" set "movie_folder_format" = '{Movie CleanTitle} ({Release Year})' where "name" = 'Radarr / Editionless' and "movie_folder_format" = '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}';
-- --- END op 4144

-- --- BEGIN op 4145 ( update radarr_naming "Radarr / Editionless" )
update "radarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Radarr / Editionless' and "replace_illegal_characters" = 0;
-- --- END op 4145

-- --- BEGIN op 4146 ( update quality_profile "1080p Main" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 4146

-- --- BEGIN op 4147 ( delete quality_profile "1080p Balanced" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Balanced';

delete from "quality_groups" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profiles" where "name" = '1080p Balanced';
-- --- END op 4147

-- --- BEGIN op 4148 ( delete quality_profile "2160p Balanced" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Balanced';

delete from "quality_groups" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profiles" where "name" = '2160p Balanced';
-- --- END op 4148
