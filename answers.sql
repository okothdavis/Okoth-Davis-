-- total sales for each product 
SELECT Product_ID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Product_ID;

-- total sales for each month
SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS SaleMonth, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY SaleMonth;

-- customer with more than 5 purchases 
SELECT Customer_ID, COUNT(Sale_ID) AS TotalPurchases
FROM Sales
GROUP BY Customer_ID
HAVING COUNT(Sale_ID) > 5;

