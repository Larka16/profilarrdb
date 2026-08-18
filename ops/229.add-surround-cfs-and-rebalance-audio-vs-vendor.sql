-- @operation: export
-- @entity: batch
-- @name: Add Surround CFs and rebalance audio vs vendor
-- @exportedAt: 2026-08-03T02:00:00.000Z
-- @opIds: 12581, 12582, 12583
--
-- Problem: audio scoring was codec-based only (a DD+ 5.1 and DD+ 2.0 scored identically),
-- and streaming-vendor nudges (AMZN/DSNP ~3000, MA ~4000) outweighed the audio ladder --
-- so a 2.0 from a "better" vendor beat a 5.1 from another.
--
-- Fix: (1) create channel-count CFs from the existing 5.1/7.1 regex; (2) score surround as
-- the dominant audio signal (beats stereo even when the stereo track is lossless); (3) drop
-- the vendor nudges to a tiny tiebreaker below the codec ladder. Resulting priority within a
-- given source: channels >> lossless codec > vendor. All values stay far below the source
-- weights, so audio never overrides resolution/eligibility.

-- --- BEGIN op 12581 ( create custom_format "5.1 Surround" / "7.1 Surround" )
insert into "custom_formats" ("name", "description") values ('5.1 Surround', 'Matches releases with a 5.1 surround audio track.');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('5.1 Surround', '5.1 Surround', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('5.1 Surround', '5.1 Surround', '5.1 Surround');

insert into "custom_formats" ("name", "description") values ('7.1 Surround', 'Matches releases with a 7.1 surround audio track.');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('7.1 Surround', '7.1 Surround', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('7.1 Surround', '7.1 Surround', '7.1 Surround');
-- --- END op 12581

-- --- BEGIN op 12582 ( update quality_profiles -- score surround )
-- Surround dominates the codec ladder (top codec ~1600 in 4K profiles), so a lossy 5.1
-- beats a lossless 2.0. 7.1 > 5.1. Stereo matches neither = 0.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('1080p Main', '5.1 Surround', 'all', 2000), ('1080p Main', '7.1 Surround', 'all', 3000),
  ('2160p Main', '5.1 Surround', 'all', 2000), ('2160p Main', '7.1 Surround', 'all', 3000),
  ('2160p Preferred', '5.1 Surround', 'all', 2000), ('2160p Preferred', '7.1 Surround', 'all', 3000),
  ('1080p Preferred', '5.1 Surround', 'all', 2000), ('1080p Preferred', '7.1 Surround', 'all', 3000),
  ('Archive', '5.1 Surround', 'all', 2000), ('Archive', '7.1 Surround', 'all', 3000),
  ('Any', '5.1 Surround', 'all', 2000), ('Any', '7.1 Surround', 'all', 3000);
-- --- END op 12582

-- --- BEGIN op 12583 ( update quality_profiles -- demote streaming vendors )
-- Drop the streaming-vendor weights to a flat 50 (tiebreaker well below the codec ladder),
-- so vendor no longer outranks audio quality. Enhancement CFs (Amazon/iTunes/etc.) are left
-- alone -- they're genuine high-bitrate quality signals, not plain vendor tags.
DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN ('AMZN','ATVP','DSNP','HMAX','MAX','iT','NF','MA')
  AND quality_profile_name IN ('1080p Main','2160p Main','2160p Preferred','1080p Preferred','Archive','Any');
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score) VALUES
  ('1080p Main','AMZN','all',50),('1080p Main','ATVP','all',50),('1080p Main','DSNP','all',50),('1080p Main','HMAX','all',50),('1080p Main','MAX','all',50),('1080p Main','iT','all',50),('1080p Main','NF','all',50),('1080p Main','MA','all',50),
  ('2160p Main','AMZN','all',50),('2160p Main','ATVP','all',50),('2160p Main','DSNP','all',50),('2160p Main','HMAX','all',50),('2160p Main','MAX','all',50),('2160p Main','iT','all',50),('2160p Main','NF','all',50),('2160p Main','MA','all',50),
  ('2160p Preferred','AMZN','all',50),('2160p Preferred','ATVP','all',50),('2160p Preferred','DSNP','all',50),('2160p Preferred','HMAX','all',50),('2160p Preferred','MAX','all',50),('2160p Preferred','iT','all',50),('2160p Preferred','NF','all',50),('2160p Preferred','MA','all',50),
  ('1080p Preferred','AMZN','all',50),('1080p Preferred','ATVP','all',50),('1080p Preferred','DSNP','all',50),('1080p Preferred','HMAX','all',50),('1080p Preferred','MAX','all',50),('1080p Preferred','iT','all',50),('1080p Preferred','NF','all',50),('1080p Preferred','MA','all',50),
  ('Archive','AMZN','all',50),('Archive','ATVP','all',50),('Archive','DSNP','all',50),('Archive','HMAX','all',50),('Archive','MAX','all',50),('Archive','iT','all',50),('Archive','NF','all',50),('Archive','MA','all',50),
  ('Any','AMZN','all',50),('Any','ATVP','all',50),('Any','DSNP','all',50),('Any','HMAX','all',50),('Any','MAX','all',50),('Any','iT','all',50),('Any','NF','all',50),('Any','MA','all',50);
-- --- END op 12583
