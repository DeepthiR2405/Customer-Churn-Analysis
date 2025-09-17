CREATE DATABASE saas_churn;
USE saas_churn;
CREATE TABLE sales_data (
    order_id VARCHAR(50),
    order_date DATE,
    date_key INT,
    contact_name VARCHAR(255),
    country VARCHAR(100),
    city VARCHAR(100),
    region VARCHAR(100),
    subregion VARCHAR(100),
    customer_name VARCHAR(255),
    customer_id INT,
    industry VARCHAR(100),
    segment VARCHAR(100),
    product VARCHAR(255),
    license VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2)
);

SHOW COLUMNS FROM sales_data;

CREATE TABLE customer_summary AS
SELECT
    customer_id,
    customer_name,
    industry,
    segment,
    country,
    city,
    region,
    subregion,

    -- RFM metrics
    DATEDIFF(CURDATE(), MAX(order_date)) AS recency_days,      -- Days since last purchase
    COUNT(DISTINCT order_id) AS frequency,                     -- Total orders
    SUM(sales) AS monetary,                                    -- Total sales
    SUM(quantity) AS total_quantity,
    SUM(profit) AS total_profit,
    SUM(discount) AS total_discount,

    -- Tenure: days between first and last order
    DATEDIFF(MAX(order_date), MIN(order_date)) AS tenure_days,

    -- Churn flag: 1 if last order was more than 180 days ago
    CASE
        WHEN MAX(order_date) < DATE_SUB(CURDATE(), INTERVAL 180 DAY) THEN 1
        ELSE 0
    END AS churn_flag

FROM sales_data
GROUP BY
    customer_id,
    customer_name,
    industry,
    segment,
    country,
    city,
    region,
    subregion;
