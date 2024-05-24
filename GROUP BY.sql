-- Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng?
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID];

-- Hãy tính giá trị đơn giá trung bình theo mỗi nhà cung cấp sản phẩm.
SELECT [SupplierID], AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID];

-- Hãy cho biết mỗi thể loại có tổng số bao nhiêu sản phẩm trong kho (UnitsInStock)?
SELECT [CategoryID], SUM([UnitsInStock]) AS [TotalUnitsInStock]
FROM [dbo].[Products]
GROUP BY [CategoryID];

-- Hãy cho biết giá vận chuyển thấp nhất và lớn nhất 
-- của các đơn hàng theo từng thành phố và quốc gia khác nhau.
SELECT [ShipCountry], [ShipCity], 
		MIN([Freight]) AS [MinFreight],
		MAX([Freight]) AS [MaxFreight]
FROM [dbo].[Orders]
GROUP BY [ShipCountry], [ShipCity]
ORDER BY [ShipCountry] ASC, [ShipCity] ASC;

--Hãy thống kê số lương nhân viên theo từng quốc gia khác nhau 
SELECT [Country], COUNT([EmployeeID]) AS 'Số lượng nhân viên'
FROM [dbo].[Employees]
GROUP BY [Country]
ORDER BY [Country] ASC;

--Hãy cho biết tổng số lượng sản phẩm "productID" và trung  bình số tiền phải trả "unitPrice" của cột 
--OrderID . Sắp xếp giảm dần, nội dung của bảng Order details


select o.OrderID, sum(o.ProductID) AS 'SumPrductID', avg(o.UnitPrice) AS 'AVGUnitPrice'
from [Order Details] as o
group by o.OrderID
order by o.OrderID desc;