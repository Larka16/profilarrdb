-- @operation: export
-- @entity: batch
-- @name: Copying 1080p Preferred
-- @exportedAt: 2026-08-03T00:20:50.820Z
-- @opIds: 2748, 2749, 2750, 2751, 2752, 2753, 2754, 2755, 2756, 2757, 2758, 2759, 2760, 2761, 2762, 2763, 2764, 2765, 2766, 2767, 2768, 2769, 2770, 2771, 2772, 2773, 2774, 2775, 2776, 2777, 2778, 2779, 2780, 2781, 2782, 2783, 2784, 2785, 2786, 2787, 2788, 2789, 2790, 2791, 2792, 2793, 2794, 2795, 2796, 2797, 2798, 2799, 2800, 2801, 2802, 2803, 2804, 2805, 2806, 2807, 2808, 2809, 2810, 2811, 2812, 2813, 2814, 2815, 2816, 2817, 2818, 2819, 2820, 2821, 2822, 2823, 2824, 2825, 2826, 2827, 2828, 2829, 2830, 2831, 2832, 2833, 2834, 2835, 2836, 2837, 2838, 2839, 2840, 2841, 2842, 2843, 2844, 2845, 2846, 2847, 2848, 2849, 2850, 2851, 2852, 2853, 2854, 2855, 2856, 2857, 2858, 2859, 2860, 2861, 2862, 2863, 2864, 2865, 2866, 2867, 2868, 2869, 2870, 2871, 2872, 2873, 2874, 2875, 2876, 2877, 2878, 2879, 2880, 2881, 2882, 2883, 2884, 2885, 2886, 2887, 2888, 2889, 2890, 2891, 2892, 2893, 2894, 2895, 2896, 2897, 2898, 2899, 2900, 2901, 2902, 2903, 2904, 2905, 2906, 2907, 2908, 2909, 2910, 2911, 2912, 2913, 2914, 2915, 2916, 2917, 2918, 2919, 2920, 2921, 2922, 2923, 2924, 2925, 2926, 2927, 2928, 2929, 2930, 2931, 2932, 2933, 2934, 2935, 2936, 2937, 2938, 2939, 2940, 2941, 2942, 2943, 2944, 2945, 2946, 2947, 2948, 2949, 2950, 2951, 2952, 2953, 2954, 2955, 2956, 2957, 2958, 2959, 2960, 2961, 2962, 2963, 2964, 2965, 2966, 2967, 2968, 2969, 2970, 2971, 2972, 2973, 2974, 2975

-- --- BEGIN op 2748 ( update quality_profile "2160p Preferred" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Preferred'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 2748

-- --- BEGIN op 2749 ( create quality_profile "1080p Preferred" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p Preferred', '2160p Balanced targets consistent & immutable 2160p **WEB-DLs w/ Lossy Audio**. 

- Average Movie Sizes ~ 15 to 30gb per Movie
- Movie Quality Ranking ~ 8/10
- Average TV Sizes ~ 5 to 15gb per Episode
- TV Quality Ranking ~ 8/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred', '2160p');

insert into "tags" ("name") values ('Balanced Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred', 'Balanced Focused');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred', 'Lossy Audio');

insert into "tags" ("name") values ('h265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred', 'h265');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Preferred', 'x264');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Preferred', '2160p Balanced');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'Bluray-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'WEBDL-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'Bluray-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'WEBDL-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'WEBRip-1080p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'Bluray-720p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'WEBDL-720p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'WEBRip-720p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'Bluray-576p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'Bluray-480p', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'WEBDL-480p', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'DVD', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'HDTV-1080p', 12);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'HDTV-720p', 13);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Preferred', '2160p Balanced', 'SDTV', 14);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', NULL, '2160p Balanced', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'WEBRip-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'HDTV-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'Remux-1080p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'WEBRip-480p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'HDTV-480p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'BR-DISK', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'CAM', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'DVD-R', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'DVDSCR', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'Raw-HD', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'REGIONAL', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'TELECINE', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'TELESYNC', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'WORKPRINT', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Preferred', 'Unknown', NULL, 16, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p Preferred', 'Any', 'simple');
-- --- END op 2749

-- --- BEGIN op 2750 ( update quality_profile "1080p Preferred" )
update "quality_profiles" set "minimum_custom_format_score" = 200000 where "name" = '1080p Preferred' and "minimum_custom_format_score" = 0;
-- --- END op 2750

-- --- BEGIN op 2751 ( update quality_profile "1080p Preferred" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '1080p Preferred' and "upgrade_until_score" = 0;
-- --- END op 2751

-- --- BEGIN op 2752 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Balanced Tier 1', 'radarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2752

-- --- BEGIN op 2753 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Balanced Tier 1', 'sonarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2753

-- --- BEGIN op 2754 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Balanced Tier 2', 'radarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2754

-- --- BEGIN op 2755 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Balanced Tier 2', 'sonarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2755

-- --- BEGIN op 2756 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Bluray', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2756

-- --- BEGIN op 2757 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Bluray', 'sonarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2757

-- --- BEGIN op 2758 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2758

-- --- BEGIN op 2759 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2759

-- --- BEGIN op 2760 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2760

-- --- BEGIN op 2761 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2761

-- --- BEGIN op 2762 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2762

-- --- BEGIN op 2763 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2763

-- --- BEGIN op 2764 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2764

-- --- BEGIN op 2765 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2765

-- --- BEGIN op 2766 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 1', 'all', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 2766

-- --- BEGIN op 2767 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 1', 'radarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2767

-- --- BEGIN op 2768 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 1', 'sonarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2768

-- --- BEGIN op 2769 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 2769

-- --- BEGIN op 2770 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 2', 'radarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2770

-- --- BEGIN op 2771 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 2', 'sonarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2771

-- --- BEGIN op 2772 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 2772

-- --- BEGIN op 2773 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 3', 'radarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2773

-- --- BEGIN op 2774 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 3', 'sonarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2774

-- --- BEGIN op 2775 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 2775

-- --- BEGIN op 2776 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 4', 'radarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2776

-- --- BEGIN op 2777 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 4', 'sonarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2777

-- --- BEGIN op 2778 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 2778

-- --- BEGIN op 2779 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 5', 'radarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 2779

-- --- BEGIN op 2780 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 5', 'sonarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 2780

-- --- BEGIN op 2781 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 2781

-- --- BEGIN op 2782 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 6', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2782

-- --- BEGIN op 2783 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p Quality Tier 6', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2783

-- --- BEGIN op 2784 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p WEB-DL', 'radarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2784

-- --- BEGIN op 2785 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p WEB-DL', 'sonarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2785

-- --- BEGIN op 2786 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '1080p WEBRip', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2786

-- --- BEGIN op 2787 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p Balanced Tier 1', 'radarr', 922000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2787

-- --- BEGIN op 2788 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p Balanced Tier 1', 'sonarr', 924000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2788

-- --- BEGIN op 2789 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p Balanced Tier 2', 'radarr', 921000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2789

-- --- BEGIN op 2790 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p Balanced Tier 2', 'sonarr', 921000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2790

-- --- BEGIN op 2791 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p Balanced Tier 3', 'radarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p Balanced Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2791

-- --- BEGIN op 2792 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p Balanced Tier 3', 'sonarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p Balanced Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2792

-- --- BEGIN op 2793 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p WEB-DL', 'radarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2793

-- --- BEGIN op 2794 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '2160p WEB-DL', 'sonarr', 920000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2794

-- --- BEGIN op 2795 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 2795

-- --- BEGIN op 2796 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Bluray', 'radarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2796

-- --- BEGIN op 2797 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Bluray', 'sonarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2797

-- --- BEGIN op 2798 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 1', 'radarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2798

-- --- BEGIN op 2799 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 1', 'sonarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2799

-- --- BEGIN op 2800 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2800

-- --- BEGIN op 2801 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2801

-- --- BEGIN op 2802 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2802

-- --- BEGIN op 2803 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2803

-- --- BEGIN op 2804 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2804

-- --- BEGIN op 2805 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2805

-- --- BEGIN op 2806 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p WEB-DL', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2806

-- --- BEGIN op 2807 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '480p WEB-DL', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2807

-- --- BEGIN op 2808 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2808

-- --- BEGIN op 2809 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2809

-- --- BEGIN op 2810 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 1', 'radarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2810

-- --- BEGIN op 2811 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 1', 'sonarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2811

-- --- BEGIN op 2812 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2812

-- --- BEGIN op 2813 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2813

-- --- BEGIN op 2814 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2814

-- --- BEGIN op 2815 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2815

-- --- BEGIN op 2816 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2816

-- --- BEGIN op 2817 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2817

-- --- BEGIN op 2818 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p WEB-DL', 'radarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2818

-- --- BEGIN op 2819 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '576p WEB-DL', 'sonarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2819

-- --- BEGIN op 2820 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Balanced Tier 1', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2820

-- --- BEGIN op 2821 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Balanced Tier 1', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2821

-- --- BEGIN op 2822 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Bluray', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2822

-- --- BEGIN op 2823 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Bluray', 'sonarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2823

-- --- BEGIN op 2824 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2824

-- --- BEGIN op 2825 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2825

-- --- BEGIN op 2826 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2826

-- --- BEGIN op 2827 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2827

-- --- BEGIN op 2828 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2828

-- --- BEGIN op 2829 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2829

-- --- BEGIN op 2830 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2830

-- --- BEGIN op 2831 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2831

-- --- BEGIN op 2832 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 2832

-- --- BEGIN op 2833 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 1', 'radarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2833

-- --- BEGIN op 2834 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 1', 'sonarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2834

-- --- BEGIN op 2835 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 2835

-- --- BEGIN op 2836 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2836

-- --- BEGIN op 2837 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2837

-- --- BEGIN op 2838 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 2838

-- --- BEGIN op 2839 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2839

-- --- BEGIN op 2840 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2840

-- --- BEGIN op 2841 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 2841

-- --- BEGIN op 2842 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2842

-- --- BEGIN op 2843 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2843

-- --- BEGIN op 2844 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 2844

-- --- BEGIN op 2845 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 2845

-- --- BEGIN op 2846 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 2846

-- --- BEGIN op 2847 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 2847

-- --- BEGIN op 2848 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2848

-- --- BEGIN op 2849 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2849

-- --- BEGIN op 2850 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p WEB-DL', 'radarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2850

-- --- BEGIN op 2851 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p WEB-DL', 'sonarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2851

-- --- BEGIN op 2852 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', '720p WEBRip', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 2852

-- --- BEGIN op 2853 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 2853

-- --- BEGIN op 2854 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'AMZN', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 2854

-- --- BEGIN op 2855 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'AMZN', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 2855

-- --- BEGIN op 2856 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 2856

-- --- BEGIN op 2857 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 2857

-- --- BEGIN op 2858 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Amazon Channel Enhancement', 'sonarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Amazon Channel Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2858

-- --- BEGIN op 2859 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Amazon Enhancement', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Amazon Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2859

-- --- BEGIN op 2860 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Amazon Enhancement', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Amazon Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2860

-- --- BEGIN op 2861 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'all'
);
-- --- END op 2861

-- --- BEGIN op 2862 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Atmos (Missing)', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'all'
);
-- --- END op 2862

-- --- BEGIN op 2863 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 2863

-- --- BEGIN op 2864 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 2864

-- --- BEGIN op 2865 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 2865

-- --- BEGIN op 2866 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2866

-- --- BEGIN op 2867 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2867

-- --- BEGIN op 2868 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 2868

-- --- BEGIN op 2869 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned Groups (Regular)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'radarr'
);
-- --- END op 2869

-- --- BEGIN op 2870 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned Groups (Regular)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned Groups (Regular)'
    AND arr_type = 'sonarr'
);
-- --- END op 2870

-- --- BEGIN op 2871 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned Language Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2871

-- --- BEGIN op 2872 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned Language Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned Language Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2872

-- --- BEGIN op 2873 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 2873

-- --- BEGIN op 2874 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 2874

-- --- BEGIN op 2875 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 2875

-- --- BEGIN op 2876 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'CAM', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'CAM'
    AND arr_type = 'radarr'
);
-- --- END op 2876

-- --- BEGIN op 2877 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 2877

-- --- BEGIN op 2878 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 2878

-- --- BEGIN op 2879 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 2879

-- --- BEGIN op 2880 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 2880

-- --- BEGIN op 2881 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DSNP', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 2881

-- --- BEGIN op 2882 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 2882

-- --- BEGIN op 2883 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 2883

-- --- BEGIN op 2884 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 2884

-- --- BEGIN op 2885 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DTS-HD MA', 'all', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'all'
);
-- --- END op 2885

-- --- BEGIN op 2886 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DTS-X', 'all', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'all'
);
-- --- END op 2886

-- --- BEGIN op 2887 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 2887

-- --- BEGIN op 2888 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 2888

-- --- BEGIN op 2889 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD Quality Tier 1', 'radarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2889

-- --- BEGIN op 2890 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD Quality Tier 1', 'sonarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2890

-- --- BEGIN op 2891 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2891

-- --- BEGIN op 2892 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2892

-- --- BEGIN op 2893 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD Remux', 'radarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2893

-- --- BEGIN op 2894 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'DVD Remux', 'sonarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2894

-- --- BEGIN op 2895 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Disney+ Enhancement', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Disney+ Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2895

-- --- BEGIN op 2896 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 2896

-- --- BEGIN op 2897 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 2897

-- --- BEGIN op 2898 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 2898

-- --- BEGIN op 2899 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 2899

-- --- BEGIN op 2900 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2900

-- --- BEGIN op 2901 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 2901

-- --- BEGIN op 2902 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 2902

-- --- BEGIN op 2903 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 2903

-- --- BEGIN op 2904 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 2904

-- --- BEGIN op 2905 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 2905

-- --- BEGIN op 2906 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 2906

-- --- BEGIN op 2907 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2907

-- --- BEGIN op 2908 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HBO Max Enhancement', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HBO Max Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2908

-- --- BEGIN op 2909 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 2909

-- --- BEGIN op 2910 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 2910

-- --- BEGIN op 2911 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 2911

-- --- BEGIN op 2912 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HMAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2912

-- --- BEGIN op 2913 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HMAX', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2913

-- --- BEGIN op 2914 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HONE Blurays', 'radarr', 922000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HONE Blurays'
    AND arr_type = 'radarr'
);
-- --- END op 2914

-- --- BEGIN op 2915 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HONE Blurays', 'sonarr', 924000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HONE Blurays'
    AND arr_type = 'sonarr'
);
-- --- END op 2915

-- --- BEGIN op 2916 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 2916

-- --- BEGIN op 2917 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 2917

-- --- BEGIN op 2918 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'MA', 'radarr', 6000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 2918

-- --- BEGIN op 2919 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'MAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2919

-- --- BEGIN op 2920 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'MAX', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2920

-- --- BEGIN op 2921 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 2921

-- --- BEGIN op 2922 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Movies Anywhere Enhancement', 'radarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Movies Anywhere Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2922

-- --- BEGIN op 2923 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 2923

-- --- BEGIN op 2924 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 2924

-- --- BEGIN op 2925 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 2925

-- --- BEGIN op 2926 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 2926

-- --- BEGIN op 2927 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 2927

-- --- BEGIN op 2928 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'PCM', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'PCM'
    AND arr_type = 'all'
);
-- --- END op 2928

-- --- BEGIN op 2929 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 2929

-- --- BEGIN op 2930 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 2930

-- --- BEGIN op 2931 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 2931

-- --- BEGIN op 2932 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 2932

-- --- BEGIN op 2933 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 2933

-- --- BEGIN op 2934 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 2934

-- --- BEGIN op 2935 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 2935

-- --- BEGIN op 2936 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 2936

-- --- BEGIN op 2937 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 2937

-- --- BEGIN op 2938 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 2938

-- --- BEGIN op 2939 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SDR', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SDR'
    AND arr_type = 'radarr'
);
-- --- END op 2939

-- --- BEGIN op 2940 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2940

-- --- BEGIN op 2941 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2941

-- --- BEGIN op 2942 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2942

-- --- BEGIN op 2943 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2943

-- --- BEGIN op 2944 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 2944

-- --- BEGIN op 2945 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 2945

-- --- BEGIN op 2946 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 2946

-- --- BEGIN op 2947 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 2947

-- --- BEGIN op 2948 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2948

-- --- BEGIN op 2949 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 2949

-- --- BEGIN op 2950 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2950

-- --- BEGIN op 2951 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'TrueHD', 'all', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'all'
);
-- --- END op 2951

-- --- BEGIN op 2952 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'TrueHD (Missing)', 'all', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'all'
);
-- --- END op 2952

-- --- BEGIN op 2953 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'UHD Bluray', 'radarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2953

-- --- BEGIN op 2954 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'UHD Bluray', 'sonarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2954

-- --- BEGIN op 2955 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 2955

-- --- BEGIN op 2956 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 2956

-- --- BEGIN op 2957 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 2957

-- --- BEGIN op 2958 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 2958

-- --- BEGIN op 2959 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 2959

-- --- BEGIN op 2960 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 2960

-- --- BEGIN op 2961 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 2961

-- --- BEGIN op 2962 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 2962

-- --- BEGIN op 2963 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 2963

-- --- BEGIN op 2964 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 2964

-- --- BEGIN op 2965 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'h265', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'h265'
    AND arr_type = 'all'
);
-- --- END op 2965

-- --- BEGIN op 2966 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 2966

-- --- BEGIN op 2967 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'iT', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 2967

-- --- BEGIN op 2968 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'iT', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 2968

-- --- BEGIN op 2969 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'iTunes Enhancement', 'radarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'iTunes Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2969

-- --- BEGIN op 2970 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'x264 (2160p)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'x264 (2160p)'
    AND arr_type = 'all'
);
-- --- END op 2970

-- --- BEGIN op 2971 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'x265 (Bluray)', 'radarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 2971

-- --- BEGIN op 2972 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'x265 (Bluray)', 'sonarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'sonarr'
);
-- --- END op 2972

-- --- BEGIN op 2973 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Preferred', 'x265 (WEB)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Preferred'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'all'
);
-- --- END op 2973

-- --- BEGIN op 2974 ( update quality_profile "1080p Preferred" )
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'WEBRip-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'Bluray-720p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'WEBDL-720p', NULL, 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'WEBRip-720p', NULL, 4, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'Bluray-576p', NULL, 5, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'Bluray-480p', NULL, 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'WEBDL-480p', NULL, 7, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'DVD', NULL, 8, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'HDTV-1080p', NULL, 9, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'HDTV-720p', NULL, 10, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Preferred', 'SDTV', NULL, 11, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Preferred'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = '1080p Preferred'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced') = 15
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Bluray-720p', 'WEBDL-720p', 'WEBRip-720p', 'Bluray-576p', 'Bluray-480p', 'WEBDL-480p', 'DVD', 'HDTV-1080p', 'HDTV-720p', 'SDTV')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Preferred'
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
      WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred'
      AND quality_group_name = '2160p Balanced'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-2160p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2974

-- --- BEGIN op 2975 ( update quality_profile "1080p Preferred" )
DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced') = 4
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced'
      AND quality_name NOT IN ('Bluray-2160p', 'WEBDL-2160p', 'Bluray-1080p', 'WEBDL-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Preferred'
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
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Preferred'
  AND quality_group_name = '2160p Balanced'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Preferred'
      AND quality_group_name = '2160p Balanced'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'WEBDL-2160p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Preferred' AS quality_profile_name, '2160p Balanced' AS quality_group_name, 'Bluray-2160p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2975
