--Viết câu lệnh SQL liệt kê tất cả các nhà cung cấp theo thứ tự tê  đơn vị CompanyName từ A->Z
SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName] ASC;
--Viết câu lệnh SQL liệt kê tất cả sản phẩm theo thứ tự giá giảm dần 
SELECT *
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC;
--Viết câu lệnh SQL liệt kê tất cả các nhân viên theo thứ tự từ A->Z
SELECT *
FROM [dbo].[Employees]
ORDER BY [lastName] ASC, [FirstName] ASC;
--Viết câu lệnh SQL lấy ra 1 sản phẩm có số lượng bán cao nhất từ bảng [Order Details] KHÔNG DÙNG MAX
SELECT TOP 1 [Quantity]
FROM [dbo].[Order Details]
ORDER BY [Quantity] DESC; 
--Viết câu lệnh SQL liệt kê danh sách các đơn đặt hàng (OrderID) trong bảng Orders theo thứ tự giảm dần của ngày đặt hàng(OrderDate)
SELECT [OrderID], [OrderDate]
FROM [dbo].[Orders]
ORDER BY [OrderDate] DESC;
--Viết câu lệnh SQL liệt kê tên, đơn giá, số lương trong kho(UnitsInStock) của tất cả các sản phẩm trong bảng Products theo thứ tự giảm dần của UnitsÍntock
SELECT [ProductName], [UnitPrice],[UnitsInStock]
FROM [dbo].[Products]
ORDER BY [UnitsInStock] DESC;
