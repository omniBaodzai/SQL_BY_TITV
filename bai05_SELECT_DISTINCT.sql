-- Bài 05: Câu lệnh truy vấn SELECT DISTINCT để lấy dữ liệu không trùng lặp. --

-- A. Ví dụ. --
-- Ví dụ 01: Viết câu lệnh SQL lấy ra tên các quốc gia (Country) khác nhau từ [bảng Customers].
SELECT DISTINCT Country
FROM Customers;
GO
-- Ví dụ 02: Viết câu lệnh SQL lấy ra các mã bưu điện (PostalCode) khác nhau từ [bảng Suppliers].
SELECT DISTINCT PostalCode  
FROM Suppliers;
GO
/* Ví dụ 03: Viết câu lệnh SQL lấy ra các dữ liệu khác nhau về họ (LastName) và chức danh lịch sự (TitleOfCourtesy)
của nhân viên từ [bảng Employees]. */
SELECT DISTINCT LastName, TitleOfCourtesy 
FROM Employees;
GO

-- B. Bài tập. --
/* Bài tập 01: Viết câu lệnh SQL lấy ra các mã đơn vị vận chuyển (ShipVia) khác nhau của các đơn đặt hàng 
từ [bảng Orders]. */
SELECT DISTINCT ShipVia
FROM Orders;
GO

-- C. Thử thác. --
/* Thử thách 1: Viết câu lệnh SQL lấy ra các mã danh mục/thể loại (CategoryID) khác nhau của các sản phẩm 
từ [bảng Products]. */
SELECT DISTINCT CategoryID
FROM Products;
GO
-- Thử thách 2: Viết câu lệnh SQL lấy ra số lượng (Quantity) các đơn đặt hàng khác nhau từ [bảng Order Details].
SELECT DISTINCT Quantity
FROM [Order Details]; -- Do tên bảng có khoảng trắng nên chúng ta dùng ngoặc vuông [] để đảm bảo cú pháp đúng
GO
