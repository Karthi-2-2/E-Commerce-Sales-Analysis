-- 1. TOTAL KPIs
SELECT 
    SUM(c6) AS Total_Sales,
    SUM(c7) AS Total_Profit,
    COUNT(*) AS Total_Orders
FROM Ecommerce_Large_Dataset;

-- 2. TOP PRODUCTS
SELECT c5 AS SubCategory, 
       SUM(c6) AS Total_Sales
FROM Ecommerce_Large_Dataset
GROUP BY c5
ORDER BY Total_Sales DESC;

-- 3. MONTHLY TREND
SELECT SUBSTR(c2, 4, 7) AS Month,
       SUM(c6) AS Monthly_Sales
FROM Ecommerce_Large_Dataset
GROUP BY Month
ORDER BY Month;

-- 4. REGION PERFORMANCE
SELECT c3 AS Region,
       SUM(c6) AS Total_Sales,
       SUM(c7) AS Total_Profit
FROM Ecommerce_Large_Dataset
GROUP BY c3
ORDER BY Total_Sales DESC;

-- 5. CATEGORY ANALYSIS
SELECT c4 AS Category,
       SUM(c6) AS Total_Sales,
       SUM(c7) AS Total_Profit
FROM Ecommerce_Large_Dataset
GROUP BY c4
ORDER BY Total_Sales DESC;
