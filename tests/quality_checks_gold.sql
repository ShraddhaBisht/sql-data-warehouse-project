
/*
=============================================================================================================================
Quality Checks
=============================================================================================================================
Script Purpose:
    This script performs quality cehcks to validate teh integrity, consistency,
    and accuracy of the Gold Layer, These checks assure:
    - Uniqueness of surrogate keys in dimension tables.
    - Referential integrity between fact and dimension tables.
    - Validation of relationships in the data model for analytical purposes.

USage Notes:
    - Run these checks after data loading Silver Layer.
    - Investigate and resolve any discrepancies found during teh checks.
=============================================================================================================================
*/

-- ==============================================================================================
-- Checking 'gold.dim_customers' 
-- ==============================================================================================
-- Check for uniqueness of Custoemr Key in gold.dim_customers
--Expectation: No Result
SELECT 
  customer_key,
  COUNT(*) AS Duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT (*) > 1;


-- ==============================================================================================
-- Checking 'gold.dim_products' 
-- ==============================================================================================
-- Check for uniqueness of Product Key in gold.dim_products
--Expectation: No Result
SELECT 
  product_key,
  COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT (*) > 1;


-- ==============================================================================================
-- Checking 'gold.fact_slaes' 
-- ==============================================================================================
-- Check teh data model connectivity between fact and dimensions
SELECT
  * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.customer_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL;
