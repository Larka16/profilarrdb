-- @operation: export
-- @entity: batch
-- @name: Duplicated 2160p Balanced
-- @exportedAt: 2026-08-02T21:55:18.300Z
-- @opIds: 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2068, 2069, 2070, 2071, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093, 2094, 2095, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139, 2140, 2141, 2142, 2143, 2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155, 2156, 2157, 2158, 2159, 2160, 2161, 2162, 2163, 2164, 2165, 2166, 2167, 2168, 2169, 2170, 2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178, 2179, 2180, 2181, 2182, 2183, 2184, 2185, 2186, 2187, 2188, 2189, 2190, 2191, 2192, 2193, 2194, 2195, 2196, 2197, 2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214

-- --- BEGIN op 1990 ( create quality_profile "2160p Main" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('2160p Main', '2160p Balanced targets consistent & immutable 2160p **WEB-DLs w/ Lossy Audio**. 

- Average Movie Sizes ~ 15 to 30gb per Movie
- Movie Quality Ranking ~ 8/10
- Average TV Sizes ~ 5 to 15gb per Episode
- TV Quality Ranking ~ 8/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Main', '2160p');

insert into "tags" ("name") values ('Balanced Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Main', 'Balanced Focused');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Main', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Main', 'Lossy Audio');

insert into "tags" ("name") values ('h265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Main', 'h265');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Main', 'x264');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Main', '2160p Balanced');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'Bluray-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'WEBDL-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'Bluray-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'WEBDL-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'WEBRip-1080p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'Bluray-720p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'WEBDL-720p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'WEBRip-720p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'Bluray-576p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'Bluray-480p', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'WEBDL-480p', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'DVD', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'HDTV-1080p', 12);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'HDTV-720p', 13);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Main', '2160p Balanced', 'SDTV', 14);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', NULL, '2160p Balanced', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'WEBRip-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'HDTV-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'Remux-1080p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'WEBRip-480p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'HDTV-480p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'BR-DISK', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'CAM', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'DVD-R', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'DVDSCR', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'Raw-HD', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'REGIONAL', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'TELECINE', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'TELESYNC', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'WORKPRINT', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Main', 'Unknown', NULL, 16, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('2160p Main', 'Any', 'simple');
-- --- END op 1990

-- --- BEGIN op 1991 ( update quality_profile "2160p Main" )
update "quality_profiles" set "minimum_custom_format_score" = 200000 where "name" = '2160p Main' and "minimum_custom_format_score" = 0;
-- --- END op 1991

-- --- BEGIN op 1992 ( update quality_profile "2160p Main" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '2160p Main' and "upgrade_until_score" = 0;
-- --- END op 1992

-- --- BEGIN op 1993 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Balanced Tier 1', 'radarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1993

-- --- BEGIN op 1994 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Balanced Tier 1', 'sonarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1994

-- --- BEGIN op 1995 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Balanced Tier 2', 'radarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1995

-- --- BEGIN op 1996 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Balanced Tier 2', 'sonarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1996

-- --- BEGIN op 1997 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Bluray', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1997

-- --- BEGIN op 1998 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Bluray', 'sonarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1998

-- --- BEGIN op 1999 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1999

-- --- BEGIN op 2000 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2000

-- --- BEGIN op 2001 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2001

-- --- BEGIN op 2002 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2002

-- --- BEGIN op 2003 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2003

-- --- BEGIN op 2004 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2004

-- --- BEGIN op 2005 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2005

-- --- BEGIN op 2006 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2006

-- --- BEGIN op 2007 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 1', 'all', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 2007

-- --- BEGIN op 2008 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 1', 'radarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2008

-- --- BEGIN op 2009 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 1', 'sonarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2009

-- --- BEGIN op 2010 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 2010

-- --- BEGIN op 2011 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 2', 'radarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2011

-- --- BEGIN op 2012 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 2', 'sonarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2012

-- --- BEGIN op 2013 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 2013

-- --- BEGIN op 2014 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 3', 'radarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2014

-- --- BEGIN op 2015 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 3', 'sonarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2015

-- --- BEGIN op 2016 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 2016

-- --- BEGIN op 2017 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 4', 'radarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2017

-- --- BEGIN op 2018 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 4', 'sonarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2018

-- --- BEGIN op 2019 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 2019

-- --- BEGIN op 2020 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 5', 'radarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 2020

-- --- BEGIN op 2021 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 5', 'sonarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 2021

-- --- BEGIN op 2022 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 2022

-- --- BEGIN op 2023 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 6', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2023

-- --- BEGIN op 2024 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p Quality Tier 6', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2024

-- --- BEGIN op 2025 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p WEB-DL', 'radarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2025

-- --- BEGIN op 2026 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p WEB-DL', 'sonarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2026

-- --- BEGIN op 2027 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '1080p WEBRip', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2027

-- --- BEGIN op 2028 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p Balanced Tier 1', 'radarr', 922000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2028

-- --- BEGIN op 2029 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p Balanced Tier 1', 'sonarr', 924000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2029

-- --- BEGIN op 2030 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p Balanced Tier 2', 'radarr', 921000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2030

-- --- BEGIN op 2031 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p Balanced Tier 2', 'sonarr', 921000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2031

-- --- BEGIN op 2032 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p Balanced Tier 3', 'radarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p Balanced Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2032

-- --- BEGIN op 2033 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p Balanced Tier 3', 'sonarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p Balanced Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2033

-- --- BEGIN op 2034 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p WEB-DL', 'radarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2034

-- --- BEGIN op 2035 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '2160p WEB-DL', 'sonarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2035

-- --- BEGIN op 2036 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 2036

-- --- BEGIN op 2037 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Bluray', 'radarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2037

-- --- BEGIN op 2038 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Bluray', 'sonarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2038

-- --- BEGIN op 2039 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 1', 'radarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2039

-- --- BEGIN op 2040 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 1', 'sonarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2040

-- --- BEGIN op 2041 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2041

-- --- BEGIN op 2042 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2042

-- --- BEGIN op 2043 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2043

-- --- BEGIN op 2044 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2044

-- --- BEGIN op 2045 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2045

-- --- BEGIN op 2046 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2046

-- --- BEGIN op 2047 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p WEB-DL', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2047

-- --- BEGIN op 2048 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '480p WEB-DL', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2048

-- --- BEGIN op 2049 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2049

-- --- BEGIN op 2050 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2050

-- --- BEGIN op 2051 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 1', 'radarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2051

-- --- BEGIN op 2052 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 1', 'sonarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2052

-- --- BEGIN op 2053 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2053

-- --- BEGIN op 2054 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2054

-- --- BEGIN op 2055 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2055

-- --- BEGIN op 2056 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2056

-- --- BEGIN op 2057 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2057

-- --- BEGIN op 2058 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2058

-- --- BEGIN op 2059 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p WEB-DL', 'radarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2059

-- --- BEGIN op 2060 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '576p WEB-DL', 'sonarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2060

-- --- BEGIN op 2061 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Balanced Tier 1', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2061

-- --- BEGIN op 2062 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Balanced Tier 1', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2062

-- --- BEGIN op 2063 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Bluray', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2063

-- --- BEGIN op 2064 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Bluray', 'sonarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2064

-- --- BEGIN op 2065 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2065

-- --- BEGIN op 2066 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2066

-- --- BEGIN op 2067 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2067

-- --- BEGIN op 2068 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2068

-- --- BEGIN op 2069 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2069

-- --- BEGIN op 2070 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2070

-- --- BEGIN op 2071 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2071

-- --- BEGIN op 2072 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2072

-- --- BEGIN op 2073 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 2073

-- --- BEGIN op 2074 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 1', 'radarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2074

-- --- BEGIN op 2075 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 1', 'sonarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2075

-- --- BEGIN op 2076 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 2076

-- --- BEGIN op 2077 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2077

-- --- BEGIN op 2078 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2078

-- --- BEGIN op 2079 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 2079

-- --- BEGIN op 2080 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2080

-- --- BEGIN op 2081 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2081

-- --- BEGIN op 2082 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 2082

-- --- BEGIN op 2083 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2083

-- --- BEGIN op 2084 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2084

-- --- BEGIN op 2085 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 2085

-- --- BEGIN op 2086 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 2086

-- --- BEGIN op 2087 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 2087

-- --- BEGIN op 2088 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 2088

-- --- BEGIN op 2089 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2089

-- --- BEGIN op 2090 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2090

-- --- BEGIN op 2091 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p WEB-DL', 'radarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2091

-- --- BEGIN op 2092 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p WEB-DL', 'sonarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2092

-- --- BEGIN op 2093 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', '720p WEBRip', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2093

-- --- BEGIN op 2094 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 2094

-- --- BEGIN op 2095 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'AMZN', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 2095

-- --- BEGIN op 2096 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'AMZN', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 2096

-- --- BEGIN op 2097 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 2097

-- --- BEGIN op 2098 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 2098

-- --- BEGIN op 2099 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Amazon Channel Enhancement', 'sonarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Amazon Channel Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2099

-- --- BEGIN op 2100 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Amazon Enhancement', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Amazon Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2100

-- --- BEGIN op 2101 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Amazon Enhancement', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Amazon Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2101

-- --- BEGIN op 2102 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'all'
);
-- --- END op 2102

-- --- BEGIN op 2103 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Atmos (Missing)', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'all'
);
-- --- END op 2103

-- --- BEGIN op 2104 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 2104

-- --- BEGIN op 2105 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 2105

-- --- BEGIN op 2106 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 2106

-- --- BEGIN op 2107 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2107

-- --- BEGIN op 2108 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2108

-- --- BEGIN op 2109 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 2109

-- --- BEGIN op 2110 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned Groups (Regular)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'radarr'
);
-- --- END op 2110

-- --- BEGIN op 2111 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned Groups (Regular)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'sonarr'
);
-- --- END op 2111

-- --- BEGIN op 2112 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned Language Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2112

-- --- BEGIN op 2113 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned Language Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2113

-- --- BEGIN op 2114 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 2114

-- --- BEGIN op 2115 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 2115

-- --- BEGIN op 2116 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 2116

-- --- BEGIN op 2117 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'CAM', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'CAM'
    AND arr_type = 'radarr'
);
-- --- END op 2117

-- --- BEGIN op 2118 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 2118

-- --- BEGIN op 2119 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 2119

-- --- BEGIN op 2120 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 2120

-- --- BEGIN op 2121 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 2121

-- --- BEGIN op 2122 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DSNP', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 2122

-- --- BEGIN op 2123 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 2123

-- --- BEGIN op 2124 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 2124

-- --- BEGIN op 2125 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 2125

-- --- BEGIN op 2126 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DTS-HD MA', 'all', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'all'
);
-- --- END op 2126

-- --- BEGIN op 2127 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DTS-X', 'all', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'all'
);
-- --- END op 2127

-- --- BEGIN op 2128 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 2128

-- --- BEGIN op 2129 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 2129

-- --- BEGIN op 2130 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD Quality Tier 1', 'radarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2130

-- --- BEGIN op 2131 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD Quality Tier 1', 'sonarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2131

-- --- BEGIN op 2132 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2132

-- --- BEGIN op 2133 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2133

-- --- BEGIN op 2134 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD Remux', 'radarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2134

-- --- BEGIN op 2135 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'DVD Remux', 'sonarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2135

-- --- BEGIN op 2136 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Disney+ Enhancement', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Disney+ Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2136

-- --- BEGIN op 2137 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 2137

-- --- BEGIN op 2138 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 2138

-- --- BEGIN op 2139 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 2139

-- --- BEGIN op 2140 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 2140

-- --- BEGIN op 2141 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2141

-- --- BEGIN op 2142 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 2142

-- --- BEGIN op 2143 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 2143

-- --- BEGIN op 2144 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 2144

-- --- BEGIN op 2145 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 2145

-- --- BEGIN op 2146 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 2146

-- --- BEGIN op 2147 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 2147

-- --- BEGIN op 2148 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2148

-- --- BEGIN op 2149 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HBO Max Enhancement', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HBO Max Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2149

-- --- BEGIN op 2150 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 2150

-- --- BEGIN op 2151 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 2151

-- --- BEGIN op 2152 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 2152

-- --- BEGIN op 2153 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HMAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2153

-- --- BEGIN op 2154 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HMAX', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2154

-- --- BEGIN op 2155 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HONE Blurays', 'radarr', 922000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HONE Blurays'
    AND arr_type = 'radarr'
);
-- --- END op 2155

-- --- BEGIN op 2156 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HONE Blurays', 'sonarr', 924000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HONE Blurays'
    AND arr_type = 'sonarr'
);
-- --- END op 2156

-- --- BEGIN op 2157 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 2157

-- --- BEGIN op 2158 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 2158

-- --- BEGIN op 2159 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'MA', 'radarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 2159

-- --- BEGIN op 2160 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'MAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2160

-- --- BEGIN op 2161 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'MAX', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2161

-- --- BEGIN op 2162 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 2162

-- --- BEGIN op 2163 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Movies Anywhere Enhancement', 'radarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Movies Anywhere Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2163

-- --- BEGIN op 2164 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 2164

-- --- BEGIN op 2165 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 2165

-- --- BEGIN op 2166 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 2166

-- --- BEGIN op 2167 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 2167

-- --- BEGIN op 2168 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 2168

-- --- BEGIN op 2169 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'PCM', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'PCM'
    AND arr_type = 'all'
);
-- --- END op 2169

-- --- BEGIN op 2170 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 2170

-- --- BEGIN op 2171 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 2171

-- --- BEGIN op 2172 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 2172

-- --- BEGIN op 2173 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SDR', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SDR'
    AND arr_type = 'radarr'
);
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'TrueHD', 'all', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'all'
);
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'TrueHD (Missing)', 'all', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'all'
);
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'UHD Bluray', 'radarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'UHD Bluray', 'sonarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 2196

-- --- BEGIN op 2197 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 2197

-- --- BEGIN op 2198 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 2198

-- --- BEGIN op 2199 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 2199

-- --- BEGIN op 2200 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 2200

-- --- BEGIN op 2201 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 2201

-- --- BEGIN op 2202 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 2202

-- --- BEGIN op 2203 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 2203

-- --- BEGIN op 2204 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 2204

-- --- BEGIN op 2205 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 2205

-- --- BEGIN op 2206 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'h265', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'h265'
    AND arr_type = 'all'
);
-- --- END op 2206

-- --- BEGIN op 2207 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 2207

-- --- BEGIN op 2208 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'iT', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 2208

-- --- BEGIN op 2209 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'iT', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 2209

-- --- BEGIN op 2210 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'iTunes Enhancement', 'radarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'iTunes Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2210

-- --- BEGIN op 2211 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'x264 (2160p)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'x264 (2160p)'
    AND arr_type = 'all'
);
-- --- END op 2211

-- --- BEGIN op 2212 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'x265 (Bluray)', 'radarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 2212

-- --- BEGIN op 2213 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'x265 (Bluray)', 'sonarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'sonarr'
);
-- --- END op 2213

-- --- BEGIN op 2214 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Main', 'x265 (WEB)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Main'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'all'
);
-- --- END op 2214
