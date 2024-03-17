--Viết câu lệnh SQL lấy ra 5 dòng đầu tiện trong bảng Customers
SELECT TOP 5 *
FROM [dbo].[Customers];

--Viết câu lệnh SQL lấy ra 30% nhân viên của công ty hiện tại
SELECT TOP 30 PERCENT *
FROM [dbo].[Employees];

--Viết câu lệnh SQL lấy ra các đơn hàng với quy định là mã khách hàng không được trùng lặp chỉ lấy 5 dòng chữ đầu tiên 
SELECT DISTINCT top 5 [CustomerID]
FROM [dbo].[Orders];

-- Viết câu lệnh SQL lấy ra các sản phẩm có mã thể loại không bị trùng lặp, chỉ lấy ra 3 dòng đầu tiên
SELECT DISTINCT TOP 3 [CategoryID]
FROM [dbo].[Products];

--Viết câu lệnh SQL lấy ra 20% không trùng lặp ShipName và ShipAddress trong bảng Orders
SELECT DISTINCT TOP 20 PERCENT [ShipName], [ShipAddress]
FROM [dbo].[Orders];

--Viết câu lệnh SQL lấy ra 120 dòng đầu trong bảng Orders
SELECT TOP 120 *
FROM [dbo].[Orders];

--Viết câu lệnh SQL lấy ra 10 dòng tên công ty khác nhau từ người cung cấp 
SELECT DISTINCT TOP 10 [CompanyName]
FROM [dbo].[Suppliers];