--How is Blinkit performing overall?
SELECT
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(AVG(sales)::numeric, 2) AS avg_sales,
    ROUND(AVG(rating)::numeric, 2) AS avg_rating,
    COUNT(DISTINCT item_identifier) AS total_items,
    COUNT(DISTINCT outlet_identifier) AS total_outlets
FROM blinkit

---sales by Item Type
SELECT
    item_type,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM blinkit
group by item_type
ORDER BY total_sales DESC;

--Sales by Outlet Type

SELECT
    outlet_type,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(AVG(sales)::numeric, 2) AS avg_sales
FROM blinkit
GROUP BY outlet_type
ORDER BY total_sales DESC;


--Sales by Outlet Location (Tier Analysis)

SELECT
    outlet_location_type,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM blinkit
GROUP BY outlet_location_type
ORDER BY total_sales DESC;

--Average Rating by Outlet Type

SELECT
    outlet_type,
    ROUND(AVG(rating)::numeric, 2) AS avg_rating
FROM blinkit
GROUP BY outlet_type
ORDER BY avg_rating DESC;

---Average Rating by Item Type
SELECT
    item_type,
    ROUND(AVG(rating)::numeric, 2) AS avg_rating
FROM blinkit
GROUP BY item_type
ORDER BY avg_rating DESC;

--High Sales but Low Rating (Risk Identification)
SELECT
    item_type,
    ROUND(AVG(sales)::numeric, 2) AS avg_sales,
    ROUND(AVG(rating)::numeric, 2) AS avg_rating
FROM blinkit
GROUP BY item_type
HAVING AVG(sales) > (SELECT AVG(sales) FROM blinkit)
   AND AVG(rating) < (SELECT AVG(rating) FROM blinkit);

--Item Count per Outlet
SELECT
    outlet_identifier,
    COUNT(DISTINCT item_identifier) AS item_count
FROM blinkit
GROUP BY outlet_identifier
ORDER BY item_count DESC;

---Visibility vs Sales (Inventory Efficiency)
SELECT
    item_type,
    ROUND(AVG(item_visibility)::numeric, 4) AS avg_visibility,
    ROUND(AVG(sales)::numeric, 2) AS avg_sales
FROM blinkit
GROUP BY item_type
ORDER BY avg_sales DESC;
---Fat Content Sales Contribution
SELECT
    item_fat_content,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND((
        SUM(sales) * 100.0 / (SELECT SUM(sales) FROM blinkit))::numeric,
        2
    ) AS sales_percentage
FROM blinkit
GROUP BY item_fat_content;
--Outlet Age vs Sales
SELECT
    2024 - outlet_establishment_year AS outlet_age,
    ROUND(AVG(sales)::numeric, 2) AS avg_sales
FROM blinkit
GROUP BY outlet_age
ORDER BY outlet_age;
--Top 10 Item–Outlet Combinations

SELECT
    item_identifier,
    outlet_identifier,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM blinkit
GROUP BY item_identifier, outlet_identifier
ORDER BY total_sales DESC
LIMIT 10;
--Underperforming Outlets
SELECT
    outlet_identifier,
    ROUND(AVG(sales)::numeric, 2) AS avg_sales
FROM blinkit
GROUP BY outlet_identifier
HAVING AVG(sales) < (SELECT AVG(sales) FROM blinkit)
ORDER BY avg_sales;


select * from blinkit