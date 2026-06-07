# Retail Sales Performance Analysis
### SQL + Power BI End-to-End Project

## Project Overview
An end-to-end data analysis project analysing retail sales 
performance across products, regions, and customer segments. 
Data was structured and queried using PostgreSQL, then 
visualised in an interactive Power BI dashboard.

## Business Problem
A retail business needed visibility into:
- Which product categories and regions drive the most revenue
- Where profit margins are strongest and weakest
- Which customer segments have the highest lifetime value
- Monthly revenue trends and return rate patterns

## Tools Used
| Tool | Purpose |
|---|---|
| PostgreSQL | Database design and analytical queries |
| pgAdmin | Database management interface |
| Power BI Desktop | Interactive dashboard and visualisation |
| DAX | Calculated measures within Power BI |
| CSV | Data export and transfer layer |

## Database Schema
4 tables designed with relational structure:

| Table | Description |
|---|---|
| customers | Customer profiles and segments |
| products | Product catalogue with pricing |
| orders | Order header with region and status |
| order_items | Line-level transaction detail |

## SQL Queries Written
1. Revenue and profit margin by product category
2. Monthly revenue trend with order volume
3. Customer segment performance and orders per customer
4. Top 5 products by total revenue
5. Regional sales with return rate analysis
6. Customer lifetime value and lifespan analysis

## Dashboard Pages
| Page | Content |
|---|---|
| Executive Summary | Revenue KPIs, category revenue, monthly trend |
| Product Performance | Top products, units sold, discount analysis |
| Regional Analysis | Revenue by region, return rates, segment split |
| Customer LTV | Lifetime value table, LTV by segment, scatter chart |

## Key Insights
- Electronics drives the majority of total revenue
- Corporate segment generates significantly more revenue per customer
- Long-tenure customers consistently show higher lifetime value
- Return rates vary significantly across regions

## Dashboard Screenshots

### Page 1 — Executive Summary
![Executive Summary](screenshots/page1_executive_summary.png)

### Page 2 — Product Performance
![Product Performance](screenshots/page2_product_performance.png)

### Page 3 — Regional Analysis
![Regional Analysis](screenshots/page3_regional_analysis.png)

### Page 4 — Customer LTV
![Customer LTV](screenshots/page4_customer_ltv.png)

## How to Run This Project
1. Run `01_create_tables.sql` in pgAdmin to create the schema
2. Run `02_insert_data.sql` to populate with sample data
3. Run `03_analysis_queries.sql` to execute the analysis queries
4. Open `retail_dashboard.pbix` in Power BI Desktop

## Author
**Aakanksha Sorte**
MSc Business Analytics — University of Dundee
LinkedIn: linkedin.com/in/aakankshasorte-79374b199
