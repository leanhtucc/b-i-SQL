-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 HOAC đơn hàng phải có Quantity 
-- bằng 10 hoặc 20, DISTINCT
--- V = IV + DISTINCT = 360
SELECT DISTINCT od.OrderID
FROM [dbo].[Order Details] od
WHERE (od.UnitPrice BETWEEN 100 AND 200)
		OR (od.Quantity IN (10, 20));

SELECT od.[OrderID]
FROM [dbo].[Order Details] od
WHERE od.UnitPrice BETWEEN 100 AND 200
UNION ALL
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.Quantity IN (10, 20);
-- từ 3 bảng suppliers, customers, orders
-- tìm tất cả các công ty bắt đầu chữ U
-- tìm các nhà cung cấp ở thành phố london
-- tìm các đơn hàng ở quốc gia USA
SELECT [City], [country]
FROM [dbo].[Suppliers] 
WHERE [country] LIKE 'U%'
UNION
SELECT [City], [Country]
FROM [dbo].[Customers] 
WHERE [City] ='London'
UNION
SELECT [ShipCity], [ShipCountry]
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'USA';
