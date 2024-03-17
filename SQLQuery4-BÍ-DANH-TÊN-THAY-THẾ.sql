--Viết câu lệnh SQL lấy 'CompanyName' và đăt tên thay thế là 'Công ty'; 'PostalCode' và đặt tên thay thế là 'Mã bưu điện' trong bảng Customers 
SELECT [CompanyName] AS [Công ty], [PostalCode] AS [Mã bưu điện]
FROM [dbo].[Customers];

--Viết câu lệnh SQL lấy 'LastName' và đặt tên thay thế là 'Họ', 'FirstName' và đặt tên là 'Tên' từ bảng Employees 
SELECT [LastName] AS [Họ], [FirstName] AS [Tên]
FROM [dbo].[Employees];

--Viết Câu lệnh SQL lấy ra 15 dong đầu tiên tất cả các cột trong bảng Orders đặt tên thay thế từ Order là 'o'
SELECT TOP 15 [o]. *
FROM [dbo].[Orders] AS [o]
--Viết câu lệnh SQL lấy ProductsName -> Tên Sản Phẩm, SupplierID -> Mã Nhà Cung Cấp , CategoryID -> Mã Thể Loại, bảng Products -> p, lấy 5 sản phẩm đầu tiên trong bảng 
SELECT TOP 5 [p]. [ProductName] AS [Tên Sản Phẩm], [SupplierID] AS [Mã Nhà Cung Cấp], [CategoryID] AS [Mã Thể Loại]
FROM [dbo].[Products] AS [p]

--Viết câu lện SQl lấy Customers -> K, 30% mỗi cột 
SELECT TOP 30 PERCENT [K]. *
FROM [dbo].[Customers] AS [K];

--Viết câu lệnh SQL Employees -> E, truy vấn cột City lấy không trùng lặp 
SELECT DISTINCT [E].[City]
FROM [dbo].[Employees] AS [E];

--Viết câu lệnh SQL EmployeeID -> [Mã số nhân viên], BirthDate -> Ngày sinh, đổi bảng Employees -> Nhân Viên, lấy 15% tổng số dòng
SELECT TOP 15 PERCENT [Nhân viên]. [EmployeeID] AS [Mã số nhân viên], [BirthDate] AS [Ngày sinh]
FROM [dbo].[Employees] AS [Nhân viên];

--Viết câu lệnh SQL đổi cột OrderID -> mã đơn hàng, ProductID -> mã sản phẩm, đổi bảng Orders -> Đơn hàng và chỉ lấy 6 dòng 
SELECT TOP 6 [Đơn hàng]. [OrderID] AS [mã đơn hàng], [CustomerID] AS [mã khách hàng]
FROM [dbo].[Orders] AS [Đơn hàng];

