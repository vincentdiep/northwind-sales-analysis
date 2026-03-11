# Northwind Traders Sales Analysis

## Overview
An exploratory analysis of the Northwind Traders dataset, a fictional food import/export
company. This project analyzes customer revenue, product performance, sales trends,
and employee productivity using SQL and Excel.

## Business Questions
1. Which customers generate the most revenue?
2. Which product categories sell the most?
3. How does revenue trend over time?
4. Which employees process the most orders?
5. Which products are underperforming?

## Key Findings
- **Beverages** is the top performing category, accounting for 20.55% of total revenue
- **Top 4 categories** (Beverages, Confections, Meat/Poultry, Dairy) account for 62.75% of revenue
- **Order volume is evenly distributed** across employees, though further analysis of tenure and order complexity would be needed to fully assess workload balance
- **Bottom 10 products by revenue are all priced under $10**, suggesting low revenue is driven by low unit price rather than lack of demand
- **Guaraná Fantástica** is the only discontinued product in the bottom 10, suggesting the company responded appropriately to its performance

## Tools Used
- SQLite / DB Browser for SQLite
- Git / GitHub
- Google Sheets

## Notes
- Queries written for SQLite — date functions would need to be adjusted for other databases
- Revenue calculations do not account for discounts in the Order Details table
- Revenue trend analysis spans July 2012 to October 2023 — first and last years are partial and should not be compared directly to full years

## Files
- `/queries` — all SQL queries numbered by analysis order
- `/visuals` — charts exported as PNG and workbook in Excel format