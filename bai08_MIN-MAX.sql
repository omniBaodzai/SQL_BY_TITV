-- Bài 08: Giá trị MIN MAX. --

-- A. Ví dụ. --
-- Ví dụ 01: Viết câu lệnh SQL lấy ra giá (UnitPrice) thấp nhất của các sản phẩm từ bảng "Products".
SELECT MIN(UnitPrice) AS [MỉnPrice]
FROM Products;
GO
-- Hoặc:
SELECT MIN(UnitPrice) -- Không có tên cột (No column name).
FROM Products;
GO
-- Ví dụ 02: Viết câu lệnh SQL lấy ra ngày đặt hàng (OrderDate) gần nhất từ bảng "Orders".
SELECT MAX(OrderDate) AS [MaxOrderDate]
FROM Orders;
GO
-- Ví dụ 03: Viết câu lệnh SQL lấy ra số lượng sản phẩm tồn kho (UnitsInStock) lớn nhất từ bảng "Products".
SELECT MAX(UnitsInStock) AS MaxUnitsInStock
FROM Products;
GO

-- B. Bài tập. --
-- Bài tập 01: Viết câu lệnh SQL lấy ra nhân viên có độ tuổi lớn nhất trong công ty từ bảng "Employees".
SELECT MIN(BirthDate) AS MinBirthDate 
FROM Employees;
GO

-- C. Thử thách. --
/* Thử thách 01: Viết câu lệnh SQL lấy ra số lượng đơn hàng (Quantity) khác nhau và chọn ra đơn hàng 
có số lượng ít nhất từ bảng "Order Details". */
SELECT DISTINCT MIN(Quantity) AS MinQuantity
FROM [Order Details];
GO
-- Lưu ý: SELECT DISTINCT TOP number | PERCENT thì kết quả vẫn không thay đổi.
SELECT DISTINCT TOP 20 PERCENT MIN(Quantity)
FROM [Order Details];
GO
/* Thử thách 02: Viết câu lệnh SQL lấy ra nhân viên có ngày bắt đầu đi làm tại công ty muộn nhất (HireDate)
từ bảng "Employees". */
SELECT MAX(HireDate) AS [HireDate]
FROM Employees; 
GO