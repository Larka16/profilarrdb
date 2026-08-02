-- @operation: export
-- @entity: batch
-- @name: Updated Ordered Items
-- @exportedAt: 2026-08-02T23:51:20.497Z
-- @opIds: 2509

-- --- BEGIN op 2509 ( update quality_profile "2160p Preferred" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'WEBRip-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'Bluray-720p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'WEBDL-720p', NULL, 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'WEBRip-720p', NULL, 4, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'Bluray-576p', NULL, 5, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'Bluray-480p', NULL, 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'WEBDL-480p', NULL, 7, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'DVD', NULL, 8, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'HDTV-1080p', NULL, 9, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'HDTV-720p', NULL, 10, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Preferred', 'SDTV', NULL, 11, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Preferred'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Preferred'
  AND quality_group_name = '2160p Balanced'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '2160p Preferred'
  AND quality_group_name = '2160p Balanced') = 15
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Preferred'
  AND quality_group_name = '2160p Balanced'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Bluray-720p', 'WEBDL-720p', 'WEBRip-720p', 'Bluray-576p', 'Bluray-480p', 'WEBDL-480p', 'DVD', 'HDTV-1080p', 'HDTV-720p', 'SDTV')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Preferred'
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
      WHERE quality_profile_name = '2160p Preferred'
  AND quality_group_name = '2160p Balanced'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Preferred'
      AND quality_group_name = '2160p Balanced'
  ) = 0 AS ok
),
new_rows AS (
SELECT '2160p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-2160p' AS quality_name, 0 AS position
UNION ALL
SELECT '2160p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 1 AS position
UNION ALL
SELECT '2160p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT '2160p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2509
