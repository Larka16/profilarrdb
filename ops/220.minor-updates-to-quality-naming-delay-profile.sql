-- @operation: export
-- @entity: batch
-- @name: Minor Updates to quality/naming/delay profile
-- @exportedAt: 2026-08-02T23:52:01.604Z
-- @opIds: 2217, 2218, 2219, 2220, 2221, 2222, 2223, 2224, 2225, 2226, 2227, 2228, 2229, 2230, 2231, 2232, 2233, 2234, 2235, 2236, 2237, 2238, 2239, 2240, 2241, 2242, 2243, 2244, 2245, 2246, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281, 2282

-- --- BEGIN op 2217 ( update quality_profile "2160p Main" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'Bluray-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'WEBDL-1080p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'WEBRip-1080p', NULL, 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'Bluray-720p', NULL, 4, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'WEBDL-720p', NULL, 5, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'WEBRip-720p', NULL, 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'Bluray-576p', NULL, 7, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'Bluray-480p', NULL, 8, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'WEBDL-480p', NULL, 9, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'DVD', NULL, 10, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'HDTV-1080p', NULL, 11, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'HDTV-720p', NULL, 12, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Main', 'SDTV', NULL, 13, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Main'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 29
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced') = 15
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Bluray-720p', 'WEBDL-720p', 'WEBRip-720p', 'Bluray-576p', 'Bluray-480p', 'WEBDL-480p', 'DVD', 'HDTV-1080p', 'HDTV-720p', 'SDTV')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
        AND NOT (
          (quality_name = 'Bluray-2160p'
        AND position = 0)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 1)
      OR (quality_name = 'Bluray-1080p'
        AND position = 2)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 3)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 4)
      OR (quality_name = 'Bluray-720p'
        AND position = 5)
      OR (quality_name = 'WEBDL-720p'
        AND position = 6)
      OR (quality_name = 'WEBRip-720p'
        AND position = 7)
      OR (quality_name = 'Bluray-576p'
        AND position = 8)
      OR (quality_name = 'Bluray-480p'
        AND position = 9)
      OR (quality_name = 'WEBDL-480p'
        AND position = 10)
      OR (quality_name = 'DVD'
        AND position = 11)
      OR (quality_name = 'HDTV-1080p'
        AND position = 12)
      OR (quality_name = 'HDTV-720p'
        AND position = 13)
      OR (quality_name = 'SDTV'
        AND position = 14)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Main'
      AND quality_group_name = '2160p Balanced'
  ) = 0 AS ok
),
new_rows AS (
SELECT '2160p Main' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 0 AS position
UNION ALL
SELECT '2160p Main' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-2160p' AS quality_name, 1 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2217

-- --- BEGIN op 2218 ( update quality_profile "2160p Main" )
UPDATE quality_profile_qualities
SET position = 1, enabled = 1
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 26
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 26
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 27
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 27
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 28
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 28
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = '2160p Main'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 29
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced') = 2
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
        AND NOT (
          (quality_name = 'Bluray-2160p'
        AND position = 0)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 1)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Main'
  AND quality_group_name = '2160p Balanced'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Main'
      AND quality_group_name = '2160p Balanced'
  ) = 0 AS ok
),
new_rows AS (
SELECT '2160p Main' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 0 AS position
UNION ALL
SELECT '2160p Main' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-2160p' AS quality_name, 1 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2218

-- --- BEGIN op 2219 ( update quality_profile "1080p Main" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Main', 'WEBRip-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Main'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 25
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 26
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 27
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 29
WHERE quality_profile_name = '1080p Main'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 28
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Main'
  AND quality_group_name = '1080p Balanced'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Main'
  AND quality_group_name = '1080p Balanced') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Main'
  AND quality_group_name = '1080p Balanced'
      AND quality_name NOT IN ('Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Main'
  AND quality_group_name = '1080p Balanced'
        AND NOT (
          (quality_name = 'Bluray-1080p'
        AND position = 0)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Main'
  AND quality_group_name = '1080p Balanced'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Main'
      AND quality_group_name = '1080p Balanced'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Main' AS quality_profile_name, '1080p Balanced' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Main' AS quality_profile_name, '1080p Balanced' AS quality_group_name, 'Bluray-1080p' AS quality_name, 1 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2219

-- --- BEGIN op 2220 ( update delay_profile "Radarr" )
update "delay_profiles" set "preferred_protocol" = 'only_usenet', "torrent_delay" = NULL where "name" = 'Radarr' and "preferred_protocol" = 'prefer_torrent' and "torrent_delay" = 360;
-- --- END op 2220

-- --- BEGIN op 2221 ( update delay_profile "Sonarr" )
update "delay_profiles" set "preferred_protocol" = 'only_usenet', "torrent_delay" = NULL where "name" = 'Sonarr' and "preferred_protocol" = 'prefer_torrent' and "torrent_delay" = 360;
-- --- END op 2221

-- --- BEGIN op 2222 ( update delay_profile "Radarr" )
update "delay_profiles" set "usenet_delay" = 180 where "name" = 'Radarr' and "usenet_delay" = 360;
-- --- END op 2222

-- --- BEGIN op 2223 ( update delay_profile "Sonarr" )
update "delay_profiles" set "usenet_delay" = 180 where "name" = 'Sonarr' and "usenet_delay" = 360;
-- --- END op 2223

-- --- BEGIN op 2224 ( update radarr_naming "Radarr" )
update "radarr_naming" set "movie_format" = '{Movie CleanTitle} {(Release Year)} {edition-{Edition Tags}}{[MediaInfo VideoDynamicRangeType]}' where "name" = 'Radarr' and "movie_format" = '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}';
-- --- END op 2224

-- --- BEGIN op 2225 ( update radarr_naming "Radarr" )
update "radarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Radarr' and "replace_illegal_characters" = 0;
-- --- END op 2225

-- --- BEGIN op 2226 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "standard_episode_format" = 'S{season:00}E{episode:00} {[MediaInfo VideoDynamicRangeType]}' where "name" = 'Sonarr' and "standard_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 2226

-- --- BEGIN op 2227 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "series_folder_format" = '{Series TitleYear}' where "name" = 'Sonarr' and "series_folder_format" = '{Series TitleYear} {tvdb-{TvdbId}}';
-- --- END op 2227

-- --- BEGIN op 2228 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Sonarr' and "replace_illegal_characters" = 0;
-- --- END op 2228

-- --- BEGIN op 2229 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 102, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2229

-- --- BEGIN op 2230 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 85, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2230

-- --- BEGIN op 2231 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 188, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2231

-- --- BEGIN op 2232 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 35, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2232

-- --- BEGIN op 2233 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 35, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2233

-- --- BEGIN op 2234 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 51, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2234

-- --- BEGIN op 2235 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 34, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'HDTV-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2235

-- --- BEGIN op 2236 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 102, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2236

-- --- BEGIN op 2237 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 13, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBDL-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2237

-- --- BEGIN op 2238 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 13, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBRip-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2238

-- --- BEGIN op 2239 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2239

-- --- BEGIN op 2240 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 17, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2240

-- --- BEGIN op 2241 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 13, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2241

-- --- BEGIN op 2242 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 13, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2242

-- --- BEGIN op 2243 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2243

-- --- BEGIN op 2244 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2244

-- --- BEGIN op 2245 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'CAM' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2245

-- --- BEGIN op 2246 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2246

-- --- BEGIN op 2247 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'DVD-R' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2247

-- --- BEGIN op 2248 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'DVDSCR' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2248

-- --- BEGIN op 2249 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'REGIONAL' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2249

-- --- BEGIN op 2250 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2250

-- --- BEGIN op 2251 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2251

-- --- BEGIN op 2252 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'TELECINE' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2252

-- --- BEGIN op 2253 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'TELESYNC' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2253

-- --- BEGIN op 2254 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 1999 where "name" = 'Radarr' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2254

-- --- BEGIN op 2255 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2255

-- --- BEGIN op 2256 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2256

-- --- BEGIN op 2257 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Radarr' and "quality_name" = 'WORKPRINT' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 2257

-- --- BEGIN op 2258 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 95, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2258

-- --- BEGIN op 2259 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2259

-- --- BEGIN op 2260 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 188, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2260

-- --- BEGIN op 2261 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2261

-- --- BEGIN op 2262 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2262

-- --- BEGIN op 2263 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 51, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2263

-- --- BEGIN op 2264 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 17, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2264

-- --- BEGIN op 2265 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 15, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'HDTV-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2265

-- --- BEGIN op 2266 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 10, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2266

-- --- BEGIN op 2267 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 69, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2267

-- --- BEGIN op 2268 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 15, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2268

-- --- BEGIN op 2269 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 10, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2269

-- --- BEGIN op 2270 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 15, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2270

-- --- BEGIN op 2271 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 10, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2271

-- --- BEGIN op 2272 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2272

-- --- BEGIN op 2273 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2273

-- --- BEGIN op 2274 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2274

-- --- BEGIN op 2275 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 4, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2275

-- --- BEGIN op 2276 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2276

-- --- BEGIN op 2277 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 1, "max_size" = 0, "preferred_size" = 995 where "name" = 'Sonarr' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2277

-- --- BEGIN op 2278 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2278

-- --- BEGIN op 2279 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 2279

-- --- BEGIN op 2280 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "daily_episode_format" = '{Series Title} - {Air-Date} - {Episode Title}' where "name" = 'Sonarr' and "daily_episode_format" = '{Series TitleYear} - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}';
-- --- END op 2280

-- --- BEGIN op 2281 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "anime_episode_format" = '{Series Title} - S{season:00}E{episode:00} - {Episode Title}' where "name" = 'Sonarr' and "anime_episode_format" = '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}[{MediaInfo VideoBitDepth}bit]{[MediaInfo VideoCodec]}[{Mediainfo AudioCodec} { Mediainfo AudioChannels}]{MediaInfo AudioLanguages}{-Release Group}';
-- --- END op 2281

-- --- BEGIN op 2282 ( delete quality_profile "720p Quality" )
delete from "quality_profile_tags" where "quality_profile_name" = '720p Quality';

delete from "quality_profile_languages" where "quality_profile_name" = '720p Quality';

delete from "quality_profile_qualities" where "quality_profile_name" = '720p Quality';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '720p Quality';

delete from "quality_groups" where "quality_profile_name" = '720p Quality';

delete from "quality_profiles" where "name" = '720p Quality';
-- --- END op 2282
