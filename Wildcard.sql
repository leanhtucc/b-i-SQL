-- Hãy lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ ‘A’
SELECT*
FROM[dbo].[Customers]
WHERE [ContactName] LIKE 'A%';

-- Hãy lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ ‘H’
-- , và có chữ thứ 2 là bất kỳ ký tự nào.
SELECT*
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'H_%';

-- Hãy lọc ra tất cả các đơn hàng được gửi đến thành phố 
-- có chữ cái bắt đầu là L, chữ cái thứ hai là u hoặc o.

SELECT*
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[uo]%';

-- Hãy lọc ra tất cả các đơn hàng được gửi đến thành phố 
-- có chữ cái bắt đầu là L, chữ cái thứ hai khong là u hoặc o.

SELECT*
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[^uo]%';

-- Hãy lọc ra tất cả các đơn hang được gửi đến thành phố có 
-- chữ cái bắt đầu là L, chữ cái thứ hai là các ký tự từ a đến e.

SELECT*
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[a-e]%';

--Bài tập 1: Hãy lấy ra tất cả các nhà cung cấp hàng có tên công ty 
--bắt đầu bằng chữ a và kh chứa b.

SELECT*
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE 'a[^b]%';

 --Câu hỏi 1: Hãy lấy ra các đơn hàng được gửi đến đất nước có tên bắt đầu bằng chữ U
 --không được chứa chữ s.
 SELECT*
 FROM [dbo].[Orders]
 WHERE [ShipCountry] LIKE 'U[^s]%';

 --Câu hỏi 2: hãy lấy ra tất cả các khách hàng có địa chỉ bắt đầu bằng chữ m
--chứa chữ b trong từ và không chứa h.
SELECT*
FROM [dbo].[Customers]
WHERE [Address] LIKE 'm[^h,b]%';