-- Viết câu lệnh SQL đếm số lượng khách hàng có trong bảng Customers
SELECT COUNT(*) AS "NumberOfCustomers"
FROM [dbo].[Customers];
--Viết câu lệnh SQL tính tổng số tiền vận chuyển(Freight) của tất cả các đơn đặt hàng(Order)
SELECT SUM([Freight]) AS "SumMoneyOrder"
FROM [dbo].[Orders];
--Viết câu lệnh SQL tính trung bình số lượng đặt hàng(Quantity) của tất cả các sản phẩm trong bảng (Order Details)
SELECT AVG([Quantity]) AS "AVGProducts"
FROM [dbo].[Order Details];
--Viết câu lệnh SQL đếm số lượng, tính tổng số lượng hàng trong kho và trung bình giá của các sản phẩm có trong bảng Products
SELECT COUNT(*) AS [numberOfProducts], SUM([UnitsInStock]) AS [SumProducts], AVG([UnitPrice]) AS [AVGProducts]
FROM [dbo].[Products];