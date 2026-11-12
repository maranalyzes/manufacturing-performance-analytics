
-- =====================================================
-- PROJECT: Manufacturing Performance Analytics
-- FILE: 01_data_quality.sql
-- PURPOSE: Data quality assessment
-- DATASET: AI4I 2020 Predictive Maintenance
-- =====================================================

-- 1. Check total records
SELECT
    COUNT(*) AS total_records
FROM ai4i2020;


-- 2. Check unique machine record identifiers
SELECT
    COUNT(DISTINCT UDI) AS unique_records,
    COUNT(*) - COUNT(DISTINCT UDI) AS duplicate_udi
FROM ai4i2020;


-- 3. Check missing values in key columns
SELECT
    COUNT(*) FILTER (WHERE UDI IS NULL) AS missing_udi,
    COUNT(*) FILTER (WHERE Product_ID IS NULL) AS missing_product_id,
    COUNT(*) FILTER (WHERE Type IS NULL) AS missing_type,
    COUNT(*) FILTER (WHERE Torque_Nm IS NULL) AS missing_torque,
    COUNT(*) FILTER (WHERE Tool_wear_min IS NULL) AS missing_tool_wear,
    COUNT(*) FILTER (WHERE Machine_failure IS NULL) AS missing_machine_failure
FROM ai4i2020;


-- 4. Check machine failure distribution
SELECT
    Machine_failure,
    COUNT(*) AS total_records,
    ROUND(
        100.0 * COUNT(*) / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM ai4i2020
GROUP BY Machine_failure
ORDER BY Machine_failure;

