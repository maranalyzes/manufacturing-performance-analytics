
-- =====================================================
-- PROJECT: Manufacturing Performance Analytics
-- FILE: 02_manufacturing_kpis.sql
-- PURPOSE: Manufacturing performance KPIs
-- DATASET: AI4I 2020 Predictive Maintenance
-- =====================================================

-- 1. Overall machine failure rate

SELECT
    COUNT(*) AS total_records,
    SUM(Machine_failure) AS total_failures,
    ROUND(
        100.0 * SUM(Machine_failure) / COUNT(*), 2
    ) AS failure_rate_percentage
FROM ai4i2020;


-- 2. Average operating conditions by machine failure

SELECT
    Machine_failure,
    COUNT(*) AS total_records,
    ROUND(AVG(Torque_Nm), 2) AS avg_torque_nm,
    ROUND(AVG(Tool_wear_min), 2) AS avg_tool_wear_min,
    ROUND(AVG(Rotational_speed_rpm), 2) AS avg_rotational_speed
FROM ai4i2020
GROUP BY Machine_failure
ORDER BY Machine_failure;


-- 3. Failure rate by torque range

SELECT
    CASE
        WHEN Torque_Nm < 20 THEN '0-20'
        WHEN Torque_Nm < 30 THEN '20-30'
        WHEN Torque_Nm < 40 THEN '30-40'
        WHEN Torque_Nm < 50 THEN '40-50'
        WHEN Torque_Nm < 60 THEN '50-60'
        ELSE '60-80'
    END AS torque_group,
    COUNT(*) AS total_records,
    SUM(Machine_failure) AS failures,
    ROUND(
        100.0 * SUM(Machine_failure) / COUNT(*), 2
    ) AS failure_rate_percentage
FROM ai4i2020
GROUP BY torque_group
ORDER BY MIN(Torque_Nm);


-- 4. Failure rate by tool wear range

SELECT
    CASE
        WHEN Tool_wear_min <= 50 THEN '0-50'
        WHEN Tool_wear_min <= 100 THEN '51-100'
        WHEN Tool_wear_min <= 150 THEN '101-150'
        WHEN Tool_wear_min <= 200 THEN '151-200'
        WHEN Tool_wear_min <= 250 THEN '201-250'
        ELSE '251-300'
    END AS tool_wear_group,
    COUNT(*) AS total_records,
    SUM(Machine_failure) AS failures,
    ROUND(
        100.0 * SUM(Machine_failure) / COUNT(*), 2
    ) AS failure_rate_percentage
FROM ai4i2020
GROUP BY tool_wear_group
ORDER BY MIN(Tool_wear_min);
