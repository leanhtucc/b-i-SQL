--Viết câu lệnh SQL lệt kê tất cả các nhân viên từ thành phố London, sắp xếp theo thứ tự lastname A->Z
SELECT *
FROM [dbo].[Employees]
WHERE [city]='London'
ORDER BY [LastName] ASC;
--Viết câu lệnh SQL liệt kê tất cả các đơn hàng bị giao muộn, biết rằng ngày cần phải giao hàng cần phải giao hàng là RequireDate, ngày giao hàng thực tế là ShippedDate 
SELECT COUNT(*) AS [so don giao hàng muộn]
FROM [dbo].[Orders]
WHERE [RequiredDate] > [ShippedDate];
--Viết câu lệnh SQL lấy ra tất cả các đơn hàng chi tiết được giảm giá nhiều hơn 10%
SELECT *
FROM [dbo].[Order Details]
WHERE [Discount] > 0.1;
--Viết câu lệnh SQL liệt kê tất cả các đơn hàng được gửi đến quốc gia là 'France'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] ='France'
--Viết câu lệnh SQL liệt kê tất cả các sản phẩm có số lượng hàng trong kho (UnitsInStock) lớn hơn 20
SELECT *
FROM[dbo].[Products]
WHERE [UnitsInStock] > 20;