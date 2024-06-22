-- Bài 07. Bí danh (Alias) - Cách đặt tên thay thế cho cột và bảng. --

-- A. Ví dụ. --
/* Ví dụ 01: Viết câu lệnh SQL lấy ra cột "CompanyName" và đặt tên thay thế là "Công ty" với cột "PostalCode" và
đặt tên thay thế là "Mã bưu điện" từ bảng "Customers". */
SELECT CompanyName AS "Công ty", -- Chuỗi kí tự: Có thể dùng ngoặc kép hoặc ngoặc đơn.
	   PostalCode AS [Mã bưu điện] -- Chuỗi kí tự: Có thể sử dụng ngoặc vuông thay thế cho ngoặc kép và đơn.
FROM Customers;
GO
-- Hoặc: Hạn chế sử dụng cách này vì gây khó hiểu cho người đọc.
SELECT CompanyName "Công ty",
	   PostalCode "Mã bưu điện"
FROM Customers;
GO
/* Ví dụ 02: Viết câu lệnh SQL lấy ra cột "LastName" và đặt tên thay thế là "Họ và chữ lót" với cột "FirstName" 
và đặt tên thay thế là "Họ" từ bảng "Employees". */
SELECT LastName AS "Họ và chữ lót",
	   FirstName AS 'Tên' 
FROM Employees;
GO
-- Hoặc: Hạn chế sử dụng cách này vì gây khó hiểu cho người đọc.
SELECT LastName AS "Họ và chữ lót", 
	   FirstName AS Tên -- Từ đơn: Có thể không dùng ngoặc kép hoặc đơn cũng được (không khuyến khích).
FROM Employees;
GO
/* Ví dụ 03: Viết câu lệnh SQL lấy ra 15 dòng đầu tiên cho tất cả các cột từ bảng "Orders" và đặt tên thay thế cho 
bảng Orders là "o". */
SELECT TOP 15 *
FROM Orders AS [o];
GO
-- Hoặc:
SELECT TOP 15 o.*
FROM Orders AS o;
GO

-- B. Bài tập. --
/* Bài tập 01: Viết câu lệnh SQL lấy ra các cột và đặt tên thay thế từ bảng "Products" như sau:
- cột "ProductName" -> Tên sản phẩm.
- cột "SupplierID" -> Mã nhà cung cấp.
- cột "CategoryID" -> Mã thể loại.
Và đặt tên thay thế cho bảng "Prodcuts" là "p", sử dụng tên thay thế khi truy vấn các cột bên trên. Và chỉ lấy 
ra 5 dòng đầu tiên từ bảng "Products". */
SELECT TOP 5 [p].ProductName AS [Tên sản phẩm], 
			 [p].SupplierID AS [Mã nhà cung cấp], 
			 [p].CategoryID AS [Mã thể loại]
FROM Products AS [p];
GO

-- C. Thử thách. --
/* Thử thách 1: Viết câu lệnh SQL lấy ra cột "Country" và đặt tên thay thế là "Quốc gia" 
Và chỉ lấy ra 15% số lượng dòng khác nhau từ bảng "Customer". */
SELECT DISTINCT TOP 15 PERCENT Country AS "Quốc gia"
FROM Customers;
GO
/* Thử thách 2: Viết câu lệnh SQL lấy ra các mã thể loại (CategoryID) khác nhau với 6 dòng đầu tiên và đổi
tên Bảng "Products" thành [p] rồi sử dụng tên thay thể đó để truy vấn cột cần lấy. */
SELECT DISTINCT TOP 6 [p].[CategoryID] AS [Quốc gia]
FROM Products AS [p];
GO







