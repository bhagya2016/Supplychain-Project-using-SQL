
-- EDA
-- 1.Dataset Shape
Select count(*) as total_records
from supply_chain;
-- 2. Check null Values
Select
count(*)  as null_products,
count(*)  as null_sales
from supply_chain
where product_name IS null and sales IS null ;
-- 3. Total Sales Revenue
Select round(sum(sales),2) as total_revenue
from supply_chain;
-- 4. Top Product Categories
Select category_name,
count(*) as total_orders
from supply_chain
group by category_name
order by total_orders desc;

-- 5. Delivery Status Distribution
Select delivery_status,
count(*) as total_orders
from supply_chain
group by delivery_status;

-- 6. Region-wise Sales
Select order_region,
round(sum(sales),2) as revenue
from supply_chain
group by order_region
order  by revenue desc;

-- 7. Customer Segment Analysis
Select customer_segment,
round(sum(sales),2) as revenue
from supply_chain
group by customer_segment;


-- SQL Analysis Questions and Answers
-- Easy Level
-- 1. Retrieve all products with stock below reorder level
Select product_name,
sum(order_item_quantity) as stock_quantity
from supply_chain
group by product_name
having sum(order_item_quantity) < 100
order  by stock_quantity;

-- 2. Find total sales revenue by product
Select product_name,
round(sum(sales),2) as total_revenue
from supply_chain
group by product_name
order  by total_revenue desc;

-- 3. count total orders handled by each supplier
Select order_region,
count(order_id) as total_orders
from supply_chain
group by order_region
order  by total_orders desc;

-- 4. List products with highest stock quantity
Select product_name,
sum(order_item_quantity) as total_stock
from supply_chain
group by product_name
order  by total_stock desc
LIMIT 10;

-- 5. Find total inventory available in each warehouse
Select order_region,
sum(order_item_quantity) as inventory_available
from supply_chain
group by order_region
order  by inventory_available desc;

-- Medium Level
-- 1. Find top 5 fast-moving products
Select product_name,
sum(order_item_quantity) as total_quantity_sold
from supply_chain
group by product_name
order  by total_quantity_sold desc
LIMIT 5;

-- 2. Identify slow-moving inventory
Select product_name,
sum(order_item_quantity) as quantity_sold
from supply_chain
group by product_name
order  by quantity_sold asC
LIMIT 10;

-- 3. Calculate average delivery time by supplier
Select order_region,
round(AVG(days_for_shipping_real),2) as avg_delivery_days
from (
Select order_region,
"Days for shipping (real)" as days_for_shipping_real
from supply_chain
) t
group by order_region
order  by avg_delivery_days;

-- 4. Find monthly sales trends
Select EXTRACT(MONTH from TO_DATE(substring("order date (DateOrders)",1,10),'MM/DD/YYYY')) as month,
round(sum(sales),2) as monthly_sales
from supply_chain
group by month
order  by month;

-- 5. Detect products frequently going out of stock
Select product_name,
count(*) as stockout_frequency
from supply_chain
where order_status = 'SUSPECTED_FRAUD'
group by product_name
order  by stockout_frequency desc;

-- Advanced Level
-- 1. Rank suppliers based on delivery performance
Select order_region,
round(AVG("Days for shipping (real)"),2) as avg_delivery_time,
RANK() over(order  by AVG("Days for shipping (real)")) as supplier_rank
from supply_chain
group by order_region;

-- 2. Predict reorder needs using sales trends
Select product_name,
AVG(order_item_quantity) as avg_monthly_sales
from supply_chain
group by product_name
order  by avg_monthly_sales desc;

-- 3. Calculate inventory turnover ratio
Select product_name,
round(sum(sales)/nullIF(AVG(order_item_quantity),0),2) as inventory_turnover_ratio
from supply_chain
group by product_name
order  by inventory_turnover_ratio desc;

-- 4. Find dead stock products with no sales
Select product_name,
sum(sales) as total_sales
from supply_chain
group by product_name
having sum(sales)=0;

-- 5. Use window functions for cumulative sales analysis
Select product_name,
order_date,
sales,
sum(sales) over(partition by product_name order  by order_date) as cumulative_sales
from (
Select product_name,
TO_DATE(substring("order date (DateOrders)",1,10),'MM/DD/YYYY') as order_date,
sales
from supply_chain
) t;

