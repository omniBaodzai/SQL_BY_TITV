-- Bài 06. Câu lệnh truy vấn SELECT TOP...PERCENT để giới hạn số dòng (hoặc %) muốn trả về. --

-- A. Ví dụ. --
-- Ví dụ 01: Viết câu lệnh SQL lấy ra 5 dòng đầu tiên trong bảng Customers.
SELECT TOP 5 *
FROM Customers;
GO
-- Ví dụ 02: Viết câu lệnh SQL lấy ra 30% nhân viên trong bảng Employees.
SELECT TOP 30 PERCENT *
FROM Employees;
GO
/* Ví dụ 03: Viết câu lệnh SQL lấy ra các mã khách hàng (CustomerID) không bị trùng lặp 
và chỉ lấy ra 5 dòng đầu tiên trong bảng Orders. */
SELECT DISTINCT TOP 5 CustomerID
FROM Orders;
GO

-- B. Bài tập. --
/* Bài tập 01: Viết câu lệnh SQL lấy ra các sản phẩm có mã thể loại (CategoryID) không bị trùng lặp 
và chỉ lấy ra 3 dòng đầu tiên trong bảng Products. */
SELECT DISTINCT TOP 3 CategoryID
FROM Products;
GO

-- C. Thử thách. --
-- Thử thách 1: Viết câu lệnh SQL lấy ra 2 dòng đầu tiên trong bảng Shippers.
SELECT TOP 2 *
FROM Shippers;
GO
/* Thử thách 2: Viết câu lệnh SQL lấy ra các quốc gia (Country) khác nhau từ các nhà cunng cấp
và chỉ lấy ra 20% số dòng trong bảng Suppliers. */
SELECT DISTINCT TOP 20 PERCENT Country
FROM Suppliers;
GO