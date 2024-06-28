-- Bài 04: Câu lệnh truy vấn SELECT. --

-- Phần I: Câu lệnh SELECT.  --
-- A. Ví dụ. --
-- Ví dụ 01: Viết câu lệnh SQL lấy ra tên của tất cả các sản phẩm (ProductName) từ [bảng Product].
SELECT ProductName
FROM Products;
GO
/* Ví dụ 02: Viết câu lệnh SQL lấy ra tên sản phẩm (ProductName), giá bán trên mỗi đơn vị (UnitPrice)
và số lượng sản phẩm trên đơn vị (QuantityPerUnit) từ [bảng Products]. */
SELECT ProductName, UnitPrice, QuantityPerUnit
FROM Products;
GO
/* Ví dụ 03: Viết câu lệnh SQL lấy ra tên công ty (CompanyName) của khách hàng và quốc gia (Country)
của khách hàng đó từ [bảng Customers]. */
SELECT CompanyName, Country
FROM Customers;
GO

-- B. Bài tập. --
/* Bài tập 01: Viết câu lệnh SQL lấy ra tên công ty (CompanyName) và số điện thoại (Phone) của tất cả 
các nhà cung cấp từ [bảng Suppliers]. */
SELECT CompanyName, Phone
FROM Suppliers;
GO

-- C. Thử thách. --
/* Thử thách 1: Viết câu lệnh SQL lấy ra mã người giao hàng (ShipperID) và tên công ty (CompanyName) của
tất cả người giao hàng từ [bảng Shippers]. */
SELECT ShipperID, CompanyName
FROM Shippers;
GO
/* Thử thách 2: Viết câu lệnh SQL lấy ra họ (LastName), tên (FirstName) và quốc gia (Country) của tất cả 
các nhân viên từ [bảng Employees]. */
SELECT LastName, FirstName, Country
FROM Employees;
GO

-- Phần II: Câu lệnh SELECT *  --
-- A. Ví dụ. --
-- Ví dụ 01: Viết câu lệnh SQL lấy ra tất cả dữ liệu từ [bảng Products].
SELECT *
FROM [dbo].[Products];
GO
-- Ví dụ 02: Viết câu lệnh SQL lấy ra tất cả dữ liệu từ [bảng Customers].
SELECT *
FROM [dbo].[Customers];
GO
-- B. Bài tập.--
-- Bài tập 01: Viết câu lệnh SQL lấy ra tất cả dữ liệu từ [bảng Suppliers].
SELECT *
FROM Suppliers;
GO
-- C. Thử thách. --
-- Thử thách 01: Viết câu lệnh SQL lấy ra tất cả dữ liệu từ [bảng Orders].
SELECT *
FROM Orders;
GO
-- Thử thách 02: Viết câu lệnh SQL lấy ra tất cả dữ liệu từ [bảng Categories].
SELECT *
FROM Categories;
GO
