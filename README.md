# retail-sql-project
Small real-world retail SQL project with tables, data, and business queries

# Retail SQL Project

This project simulates a small retail data warehouse.

## Features
- Customer, Product, Order data model
- Sample transactional data
- Business queries for revenue and customer insights
- Clean SQL folder structure

## Tech
- SQL Server compatible
- Designed for Azure Data Studio
## How to Run (Azure Data Studio)
Run scripts in this order:

1. `sql/retail_dw/ddl/01_create_tables.sql`
2. `sql/retail_dw/dml/02_insert_sample_data.sql`
3. `sql/retail_dw/views/04_vw_order_revenue.sql`
4. `sql/retail_dw/queries/03_business_queries.sql`
5. `sql/retail_dw/queries/05_monthly_revenue.sql`

## Example Output
- Total Revenue (Completed Orders): **647.94**
