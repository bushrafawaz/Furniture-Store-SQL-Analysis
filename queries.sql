-- Lauren's Furniture Store | Customer Purchase SQL Queries
-- Prepared for a SQLite database (customer_data.db).
-- Original uploaded SQL queries consolidated for easier GitHub publishing.
-- All statements below are read-only SELECT queries.

-- 1. Extract the date from a timestamp for December 2020 purchases.
SELECT
    DATE(SUBSTR(date, 1, 10)) AS date_only,
    purchase_price
FROM customer_purchase
WHERE date >= '2020-12-01' AND date < '2021-01-01';

-- 2. Combine product code and color for couch products.
-- SQLite uses || for concatenation; the original script used CONCAT().
SELECT
    product_code || product_color AS new_product_code
FROM customer_purchase
WHERE product = 'couch';

-- 3. Use product code when the product name is missing.
SELECT
    COALESCE(NULLIF(product, ''), product_code) AS product_info
FROM customer_purchase;

-- 4. Convert purchase price to numeric and sort from highest to lowest.
-- SQLite uses REAL, whereas the original script used FLOAT64.
SELECT
    CAST(purchase_price AS REAL) AS purchase_price_numeric
FROM customer_purchase
ORDER BY CAST(purchase_price AS REAL) DESC;
