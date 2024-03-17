-- Viết câu lệnh SQllấy ra tên các quốc gia  khác nhau từ bange khách hàng
SELECT DISTINCT [Country]
FROM [dbo].[Customers];


--Viết  câu lệnh SQL lấy ra tên các mã số bưu điện (PostalCode) khác nhau từ bảng nhà cung cấp(Suppliers)
SELECT DISTINCT [PostalCode]
FROM [dbo].[Suppliers];

-- Viết câu lệnh SQL lấy ra các dữ liệu khác nhau từ họ cảu nhân viên(LastName) và cách gọi danh hiệu lịch sử(TitleOfCourtesy) của nhân viên từ bangr Employees
SELECT DISTINCT LastName, TitleOfCourtesy
FROM Employees;


--Viết câu lệnh SQL lấy ra mã đơn vị vận chuyển(ShipVia) khác nhau của các đơn hàng(Orders)
SELECT DISTINCT [ShipVia]
FROM [dbo].[Orders];