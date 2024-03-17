--Viết câu lệnh SQL liệt kê tất cả các sản phẩm có số lượng trong kho (UnitsInStock) thuộc khoảng nhỏ hơn 50 hoặc lớn hơn hơn 100
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] < 50 OR [UnitsInStock] > 100;
--Viết câu lệnh SQL liệt kê tất cả các đơn hàng được giao đến Brazil, đã bị giao muộn, biết rằng ngày cần phải giao hàng là RequiredDate, ngày giao hàng thực tế là ShippedDate
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] ='Brazil' AND [RequiredDate] > [ShippedDate];
--viết câu lệnh SQL lấy ra tất cả các sản phẩm có giá trị  dưới 100$ và mã thể loại khác 1
SELECT*
FROM [dbo].[Products]
WHERE NOT  ([UnitPrice] >= 100 OR  [CategoryID] = 1);
--Viết câu lệnh SQL liệt kê tất cả các đơn hàng có giá vận chuyển Freight trong khoảng [50,100] đô la 
SELECT*
FROM [dbo].[Orders]
WHERE NOT ([Freight] < 50 OR [Freight] > 100);
--Viết câu lệnh SQL liệt kê các sản phẩm có số lượng hàng trong kho (UnitsInStock) lớn hơn 20 và số lượng hàng trong đơn hàng (UnitsOnOrder) nhỏ hơn 20
SELECT*
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20 AND [UnitsOnOrder] <20;