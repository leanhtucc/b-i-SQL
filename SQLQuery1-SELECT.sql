-- Viết câu lệnh SQL lấy ra tên của tất cả các sản phẩm 
SELECT [ProductName]
FROM[dbo].[Products];

-- Viết câu lệnh SQL lấy ra tên sản phẩm, 
-- giá bán trên mỗi đơn vị, số lượng sản phẩm trên mỗi đơn vị
SELECT[ProductName], [UnitPrice], [QuantityPerUnit]
FROM [dbo].[Products]

-- Viết câu lệnh SQL lấy ra tên khách hàng và quốc gia cảu các khách hàng đó
SELECT[ContactName], [Country]
FROM [dbo].[Customers]


-- Viết câu lệnh SQL lấy ra tên và số điện thoại của tất cả các nhà cung cấp hàng
SELECT [CompanyName], [Phone]
FROM[dbo].[Suppliers];

-- Viết câu lệnh SQL lấy ra tất cả dữ liệu từ bảng nhân viên
SELECT *
FROM [dbo].[Employees]

--Viết câu lệnh SQL lấy ra ngày sinh, thành phố hiện tại và số điện thoại của các nhân viên
SELECT [BirthDate], [City], [HomePhone]
FROM [dbo].[Employees];

--Viết câu lệnh SQL lấy ra tất cả dữ liệu từ khách hàng
SELECT *
FROM [dbo].[customers];

--Viết câu lệnh SQL lấy ra tất cả tất cả dữ liệu từ bange nhà cung cấp
SELECT *
FROM [dbo].[Suppliers];