SELECT * FROM bike_sales.bike_sales_2021;
SELECT
SUM(REPLACE(REPLACE(Revenue,'$',''),',','')) AS Total_Revenue
FROM bike_sales_2021;
SELECT
SUM(REPLACE(REPLACE(Profit,'$',''),',','')) AS Total_Profit
FROM bike_sales_2021;
SELECT
SUM(REPLACE(REPLACE(Cost,'$',''),',','')) AS Total_Cost
FROM bike_sales_2021;
SELECT
COUNT(*) AS Total_Orders
FROM bike_sales_2021;
SELECT
AVG(Order_Quantity) AS Avg_Order_Qty
FROM bike_sales_2021;
SELECT
    Country,
    SUM(CAST(REPLACE(REPLACE(Revenue,'$',''),',','') AS DECIMAL(10,2))) AS Total_Revenue
FROM bike_sales_2021
GROUP BY Country
ORDER BY Total_Revenue DESC;
SELECT
    Product_Category,
    SUM(CAST(REPLACE(REPLACE(Revenue,'$',''),',','') AS DECIMAL(10,2))) AS Total_Revenue
FROM bike_sales_2021
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;
SELECT 
    Product,
    SUM(CAST(REPLACE(REPLACE(Revenue, '$', ''),
            ',',
            '')
        AS DECIMAL (10 , 2 ))) AS Total_Revenue
FROM
    bike_sales_2021
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 10;
SELECT
    Age_Group,
    SUM(CAST(REPLACE(REPLACE(Revenue,'$',''),',','') AS DECIMAL(10,2))) AS Total_Revenue
FROM bike_sales_2021
GROUP BY Age_Group
ORDER BY Total_Revenue DESC;
SELECT
    Customer_Gender,
    SUM(CAST(REPLACE(REPLACE(Revenue,'$',''),',','') AS DECIMAL(10,2))) AS Total_Revenue
FROM bike_sales_2021
GROUP BY Customer_Gender;
CREATE TABLE bike_sales_clean AS
SELECT
    STR_TO_DATE(Date, '%m/%d/%Y') AS Date,
    Day,
    Month,
    Year,
    Customer_Age,
    Age_Group,
    Customer_Gender,
    Country,
    State,
    Product_Category,
    Sub_Category,
    Product,
    Order_Quantity,

    CAST(REPLACE(REPLACE(Unit_Cost,'$',''),',','') AS DECIMAL(10,2)) AS Unit_Cost,

    CAST(REPLACE(REPLACE(Unit_Price,'$',''),',','') AS DECIMAL(10,2)) AS Unit_Price,

    CAST(REPLACE(REPLACE(Cost,'$',''),',','') AS DECIMAL(12,2)) AS Cost,

    CAST(REPLACE(REPLACE(Revenue,'$',''),',','') AS DECIMAL(12,2)) AS Revenue,

    CAST(REPLACE(REPLACE(Profit,'$',''),',','') AS DECIMAL(12,2)) AS Profit

FROM bike_sales_2021;
SELECT *
FROM bike_sales_clean
LIMIT 5;
DESCRIBE bike_sales_clean;
SELECT *
FROM bike_sales_clean
LIMIT 5;
DESCRIBE bike_sales_clean;
SELECT * FROM bike_sales_clean
LIMIT 5;
DESCRIBE bike_sales_clean;
SELECT
    Country,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY Country
ORDER BY Total_Revenue DESC;
SELECT
    Country,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY Country
ORDER BY Total_Revenue DESC;
SELECT
    State,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY State
ORDER BY Total_Revenue DESC;
SELECT
    Product_Category,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;
SELECT
    Sub_Category,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY Sub_Category
ORDER BY Total_Revenue DESC;
SELECT
    Product,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 10;
SELECT
    Age_Group,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY Age_Group
ORDER BY Total_Revenue DESC;
SELECT
    Customer_Gender,
    SUM(Revenue) AS Total_Revenue
FROM bike_sales_clean
GROUP BY Customer_Gender;
SELECT
    Country,
    SUM(Profit) AS Total_Profit
FROM bike_sales_clean
GROUP BY Country
ORDER BY Total_Profit DESC;
SELECT
    AVG(Order_Quantity) AS Average_Order_Quantity
FROM bike_sales_clean;
SELECT
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit,
    SUM(Cost) AS Total_Cost
FROM bike_sales_clean;