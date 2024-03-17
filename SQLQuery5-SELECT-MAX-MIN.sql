--vIẾT CÂU lệnh SQL tìm giá thấp nhất trong các sản phẩm trong bảng Products
SELECT MIN([UnitPrice])
FROM [dbo].[Products];

--Viết câu lệnh SQL lấy ra ngày đặt hàng gần nhất từ bảng Orders
SELECT MAX([OrderDate])
FROM [dbo].[Orders];

--Viết câu lệnh SQL tìm ra có số lượng hàng tồn kho(UnitsInStock) lớn nhất
SELECT MAX([UnitsInStock]) AS [MAXUnitsInStock]
FROM [dbo].[Products];

--Viết câu lệnh SQL tìm nhân viên có tuổi đời lớn nhất 
SELECT MIN([BirthDate]) AS [MaxDate]
FROM [dbo].[Employees];

--Viết câu lệnh SQL tìm đơn hàng đã đặt ít nhất trong cột UnitsOnOrder  bảng Products
SELECT MIN([UnitsOnOrder])
FROM [dbo].[Products];

--Viết câu lệnh SQL tìm ngày ship hàng (ShippedDate) gần nhất trong bảng Orders
SELECT MAX([ShippedDate]) AS [MaxShippedDate]
FROM [dbo].[Orders]