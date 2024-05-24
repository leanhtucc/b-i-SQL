--Viết câu lệnh SQL hãy lọc ra tất cả các khách hàng đến từ các quốc gia (country) bắt đầu bằng trữ "A"
SELECT *
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%';

-- Lấy danh sách các đơn đặt được gửi đến các thành phố có chứa chữ ‘a’.
SELECT*
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE '%a%';

-- Hãy lọc ra tất cả các đơn hàng với điều kiện:
-- ShipCountry  LIKE ‘U_’
-- ShipCountry LIKE ‘U%’

SELECT*
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U_';

SELECT*
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U%';

--Hãy lấy tất cả các nhà cung cấp hàng có chữ 'b' trong tên của công ty
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE '%b%';

--Câu hỏi 1: hãy tìm những giá tiền của đơn hàng trong bảng OrderDetails
--có số 1 ở đầu và có số 8 ở bất kì đâu.

SELECT*
FROM [dbo].[Order Details]
WHERE [UnitPrice] LIKE '%1%';

--Câu hỏi 2: hãy tìm số lượng trên mỗi đơn vị: QuantityPerUnit của sản phẩm trong bảng products
--có chữ k ở trong.

SELECT*
FROM [dbo].[Products]
WHERE [QuantityPerUnit] LIKE '%k%';