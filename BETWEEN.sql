-- Lấy danh sách các sản phẩm có giá bán trong khoảng từ 10 đến 20 đô la.
SELECT*
FROM[dbo].[Products]
WHERE [UnitPrice] BETWEEN 10 AND 20;
-- Lấy danh sách các đơn đặt hàng được đặt trong khoảng thời gian 
-- từ ngày 1996-07-01 đến ngày 1996-07-31:
SELECT*
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Tính tổng số tiền vận chuyển (Freight) của các
-- đơn đặt hàng được đặt trong khoảng thời gian từ ngày 1996-07-01 
-- đến ngày 1996-07-31:

SELECT SUM([Freight]) AS [SumFreight]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';
--Viết câu lệnh SQL lấy danh sách các đơn đặt hàng trong khoảng từ ngày 1/1/1997 đến ngày 31/12/1997 và được vận chuyển bằng đường thủy (ShipVia = 3)
SELECT*
FROM [dbo].[Orders]
WHERE ([OrderDate] BETWEEN '1997-1-1' AND '1997-12-31') AND [ShipVia] = '3';
 Viết câu lệnh SQL liệt kê họ và tên nhân viên,
-- chỉ sống ở London,
--có ngày tháng năm sinh từ đến 1/1/1952 đến 31/12/1963 
--hoặc ngày tuyển từ 1/2/1992 đến 31/12/1993
-- chỉ lấy 3 nhân viên đầu tiên sắp xếp theo [LastName] A-Z.

Select TOP 3 [FirstName] +' ' + [LastName] as [Họ và tên],
		[BirthDate] as [Ngày sinh],
		[HireDate] as [Ngày tuyển]
From [dbo].[Employees]
Where [City] = 'London' 
	AND [BirthDate] BETWEEN '1952-01-01' AND '1963-12-31'
	OR [BirthDate] BETWEEN '1992-02-01' AND '1993-12-31'
Order by [FirstName] ASC;

--Thử thách 2: Viết câu lệnh SQL liệt kê các đơn hàng, 
-- [OrderDate] từ 01-07-1996 đến 01-09-1996
-- [OrderID] từ 10000 đến 10250
--Sắp xếp theo [ShipName] Z-A.

Select*
From [dbo].[Orders]
Where [OrderDate] Between '1996-07-01' And '1996-09-01' 
	And [OrderID] Between 10000 and 10250
Order by [ShipName] DESC;
