# Sales Performance and Customer Insights Report

**Author:** Loretta Chimezie   
**Date:** 2025-12-21

## Project Background
This project analyzes transactions dataset to assess sales performance over time, analyze the underperforming profit margins and uncover customer purchasing behaviors, to aid business and marketing decisions.

## Project Objective
1.	Who are the most valuable customers
2.	Which products truly drive profit
3.	Are Customers buying in bulk or smaller quantities
4.	When is peak sales during the year

## Datasets Description
- **Retail Sales.csv** 
- **Key fields** — transactions id, sales date & time, gender, age, category, quantity, total sales

## Data Cleaning
•	Renamed columns using CHANGE 
•	Standardized text values using LIKE and CASE
•	Converted string dates and time using STR_TO_DATE()

## Key KPIs
-	Gender distribution using conditional aggregation
-	Categorized age using conditional aggregation
-	Product segmentation analysis
-	Inventory analysis
-	Transactions by month and by hour of day

## Sample SQL Snippets
											

## Key Insights
•	Female are the most valuable customers.
•	The middle aged (customers between 41 – 51 age bracket) make higher purchases.
•	Products boosting the sales volume are not the ones with high profit
•	Beauty products generates higher profit followed by Electronics and then Clothing.
•	Female purchases more of beauty products while the male purchases more of Electronics and Clothing.
•	Customers make more of bulk purchases than smaller quantities.
•	Sales increases from the month of September through December.
•	Low purchase of Beauty products this year contributes to decrease in sales profit during peak period in compares with last year’s peak.
•	Sales hike is between 17:00hrs – 22:00hrs.

## Recommendations
•	Management should invest more on Beauty product
•	Promotions should be focused on female and ‘middle aged’
•	Introduce other incentives that will attract the ‘youth’ and ‘adult’ (from age 29 -40yrs)
•	Also promote Beauty products for female and Electronics for the male
•	Inventory stock-up should be increased by 300% from the month of September to the end of the year
•	Deploy more staff towards evening shift

## Tools & Technologies
-	SQL (MySQL)
-	MySQL Workbench

## Project Files (included)
-	`Data_cleaning.sql` — Data cleaning and transformation in SQL
-	`EDA.sql` — Exploratory Data Analysis
-	`/Retail Sales/` — raw data files used for analysis (csv)
-	`Presentation.pdf` — boardroom slide deck (13 slides)
-	`README.md` — this documentation

## How to Run / View
1.	Import the dataset into your SQL environment
2.	Run the queries in the queries folder
3.	Review the results tables
4.	Refer to `Presentation.pdf` for a summary of insights and recommended actions



## Contact 
Loretta Chimezie   
Email: _chimezieloretta@gmail.com_    
LinkedIn: _ https://www.linkedin.com/in/loretta-chimezie/_
