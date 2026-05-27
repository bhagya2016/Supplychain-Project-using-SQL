# Supply Chain & Inventory Optimization using SQL

![Supply Chain Architecture](image.png)

---

# Project Overview

This project focuses on analyzing and optimizing supply chain and inventory operations using SQL.  
The analysis helps identify inventory shortages, delivery delays, fast-moving products, slow-moving inventory, supplier performance, and sales trends.

The project uses the **DataCo Supply Chain Dataset** and demonstrates real-world business problem-solving using SQL queries, aggregations, CTEs, and window functions.

---

# Business Problem Statement

The company faces several operational challenges:

- Overstocking of slow-moving products
- Frequent stock shortages of high-demand products
- Delayed deliveries affecting customer satisfaction
- Poor visibility into inventory movement
- Inefficient reorder planning
- Uneven sales performance across regions

The objective is to optimize inventory management and improve supply chain efficiency through data analysis.

---

# Dataset Used

Dataset: **DataCo Supply Chain Dataset**

### Important Columns Used

- Product Name
- Category Name
- Order Item Quantity
- Sales
- Order Profit Per Order
- Delivery Status
- Days for shipping (real)
- Days for shipment (scheduled)
- Order Date
- Shipping Date
- Order Status
- Order Region
- Customer Segment

---

# Exploratory Data Analysis (EDA)

## 1. Dataset Size
- Total number of records
- Total transactions available

## 2. Missing Value Analysis
- Checking null values
- Data consistency validation

## 3. Revenue Analysis
- Total business revenue
- Profit analysis

## 4. Category Analysis
- Most ordered categories
- High-performing product groups

## 5. Delivery Analysis
- Delivery status distribution
- Shipping delays

## 6. Region-wise Performance
- Revenue by region
- Demand concentration

## 7. Customer Segment Analysis
- Consumer vs corporate customers
- Revenue contribution

---

# SQL Analysis Questions

# Easy Level

### 1. Retrieve all products with stock below reorder level

### 2. Find total sales revenue by product

### 3. Count total orders handled by each supplier

### 4. List products with highest stock quantity

### 5. Find total inventory available in each warehouse

---

# Medium Level

### 1. Find top 5 fast-moving products

### 2. Identify slow-moving inventory

### 3. Calculate average delivery time by supplier

### 4. Find monthly sales trends

### 5. Detect products frequently going out of stock

---

# Advanced Level

### 1. Rank suppliers based on delivery performance

### 2. Predict reorder needs using sales trends

### 3. Calculate inventory turnover ratio

### 4. Find dead stock products with no sales

### 5. Use window functions for cumulative sales analysis

---

# Optimization Techniques Used

## Inventory Optimization
- Identified fast-moving and slow-moving products
- Reduced excess inventory holding cost
- Improved stock replenishment planning

## Supply Chain Optimization
- Analyzed delivery delays
- Evaluated regional performance
- Ranked supplier efficiency

## Sales Optimization
- Identified high-revenue products
- Detected seasonal sales trends
- Forecasted reorder requirements

## SQL Optimization Techniques
- Aggregate Functions
- GROUP BY and HAVING
- CTEs (Common Table Expressions)
- Window Functions
- Subqueries
- Joins
- Date Functions

---

# Key Business Insights

- Fast-moving products contribute major revenue.
- Slow-moving inventory increases storage costs.
- Some regions face delivery delays.
- Monthly trends help forecast demand.
- Inventory turnover ratio improves stock management.
- Dead stock products waste warehouse space.

---

# Scope of Improvement

## 1. Machine Learning Forecasting
Future improvements can include demand forecasting using machine learning models.

## 2. Real-time Inventory Tracking
Integrate IoT or ERP systems for live inventory updates.

## 3. Automated Reorder Alerts
Build automated alerts when stock falls below threshold levels.

## 4. Route Optimization
Use logistics optimization algorithms to reduce delivery delays.

## 5. Dashboard Automation
Connect SQL database with Power BI or Tableau for real-time dashboards.

---

# Tools & Technologies Used

- PostgreSQL
- SQL
- Power BI
- Excel

---

# Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- SQL Query Writing
- Data Aggregation
- Window Functions
- Business Analytics
- Inventory Analysis
- Supply Chain Analytics
- Dashboard Reporting

---

# Conclusion

This project demonstrates how SQL can be used to solve real-world supply chain and inventory management problems.  
The analysis helps businesses improve stock availability, reduce operational costs, optimize supplier performance, and enhance customer satisfaction.
