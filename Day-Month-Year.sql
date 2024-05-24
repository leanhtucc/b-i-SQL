-- Tính số lượng đơn đặt hàng trong năm 1997 của từng khách hàng?
SELECT [CustomerID], COUNT([OrderID]) AS [CountOrder], YEAR([OrderDate]) AS [YearOrder]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = '1997'
GROUP BY [CustomerID], YEAR([OrderDate]);
-- Hãy lọc ra các đơn hàng được đặt hàng vào tháng 5 năm 1997.
SELECT [OrderID], YEAR([OrderDate]) AS [YearOrder], MONTH([OrderDate]) AS [MonthOrder]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = '1997' AND  MONTH([OrderDate]) = '5';
-- Lấy danh sách khách hàng đặt hàng trong năm 1998 
-- và số đơn hàng mỗi tháng, sắp xếp tháng tăng dần.
SELECT [CustomerID], MONTH([OrderDate]) AS [MONTH], COUNT(*) AS [TotalOrder]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = '1998'
GROUP BY [CustomerID], MONTH([OrderDate])
ORDER BY MONTH([OrderDate]) ASC;
--Hãy lọc các đơn đặt hàng đã được giao vào tháng 5và sắp xếp tăng dần theo năm 
SELECT [CustomerID], MONTH([ShippedDate]) AS [MonthOrder] , YEAR([ShippedDate]) AS [YearOrder],  COUNT(*) AS [TotalOrder]
FROM [dbo].[Orders]
WHERE MONTH([ShippedDate]) = '5'
GROUP BY YEAR([ShippedDate]), [CustomerID], MONTH([Shippeddate])
ORDER BY YEAR([ShippedDate]) ASC;
