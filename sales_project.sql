SELECT * FROM sales_project.`sample - superstore`;
SELECT * FROM `sample - superstore` LIMIT 10;
SELECT Region, 
       ROUND(SUM(Sales), 2) AS Total_Revenue,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM `sample - superstore`
GROUP BY Region
ORDER BY Total_Revenue DESC;

SELECT `Product Name`,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Product Name`,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Product Name`
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;

SELECT Segment,
       COUNT(DISTINCT 'Order ID') AS Total_Orders,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(AVG(Discount), 2) AS Avg_Discount,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM `sample - superstore`
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT 'Order ID', `Product Name`, Discount, Sales, Profit
FROM `sample - superstore`
WHERE Discount >= 0.4 AND Profit < 0
ORDER BY Profit ASC;





