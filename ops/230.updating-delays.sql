-- @operation: export
-- @entity: batch
-- @name: Updating delays
-- @exportedAt: 2026-08-10T16:35:29.126Z
-- @opIds: 3441, 3442, 3443, 3444

-- --- BEGIN op 3441 ( update delay_profile "Sonarr" )
update "delay_profiles" set "usenet_delay" = 15 where "name" = 'Sonarr' and "usenet_delay" = 180;
-- --- END op 3441

-- --- BEGIN op 3442 ( update delay_profile "Sonarr" )
update "delay_profiles" set "bypass_if_highest_quality" = 1 where "name" = 'Sonarr' and "bypass_if_highest_quality" = 0;
-- --- END op 3442

-- --- BEGIN op 3443 ( update delay_profile "Radarr" )
update "delay_profiles" set "usenet_delay" = 60 where "name" = 'Radarr' and "usenet_delay" = 180;
-- --- END op 3443

-- --- BEGIN op 3444 ( update delay_profile "Radarr" )
update "delay_profiles" set "bypass_if_highest_quality" = 1 where "name" = 'Radarr' and "bypass_if_highest_quality" = 0;
-- --- END op 3444
