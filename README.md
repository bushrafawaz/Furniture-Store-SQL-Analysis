# Furniture Store – SQL Customer Purchase Analysis

## Overview
A small SQL practice project using purchase records from Lauren's Furniture Store. The project explores basic data preparation and querying techniques to make product and purchase information easier to inspect.

## Dataset
- **29 purchase records** and **10 columns** in `customer_purchase.csv`
- SQLite database: `customer_data.db`
- Table: `customer_purchase`
- Fields: `date`, `transaction_id`, `customer_id`, `product`, `product_code`, `product_color`, `product_price`, `purchase_size`, `purchase_price`, and `revenue`
- Two records have an empty `product` value in the CSV. The example query uses `product_code` as a fallback for these cases.

## SQL techniques demonstrated
1. Extracting dates from timestamps using `DATE()` and `SUBSTR()`
2. Creating an identifier by combining product code and color
3. Providing a fallback for missing product names using `COALESCE()` and `NULLIF()`
4. Casting purchase prices to numeric values and sorting in descending order

## Files
- `queries.sql` — four consolidated **read-only** SQL examples
- `customer_purchase.csv` — source purchase data
- `customer_data.db` — SQLite database containing the `customer_purchase` table

## How to run
1. Open `customer_data.db` in **DB Browser for SQLite** (or another SQLite editor).
2. Open `queries.sql` and run one SELECT statement at a time.
3. Inspect the results; no records are changed by these queries.

## Notes
The original exercise files used `CONCAT()` and `CAST(... AS FLOAT64)`. The consolidated `queries.sql` uses SQLite-compatible syntax (`||` and `REAL`) to run against the supplied `.db` file. The original data files were **not** modified.

This is an educational SQL practice project, not a completed business reporting system. Only share the data publicly if you have permission to publish it.
