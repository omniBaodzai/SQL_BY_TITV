-- Bài 12: Lọc dữ liệu bằng mệnh đề WHERE trong SQL. --

-- A. Ví dụ. --
/* Ví dụ 01: Viết câu lệnh SQL liệt kê tất cả các nhân viên đến từ thành phố "London" và sắp xếp
họ (LastName) của nhân viên theo thứ tự tăng dần A - Z từ [bảng Employees]. */
SELECT *
FROM Employees
WHERE City = 'London'
ORDER BY LastName ASC;
GO
/* Ví dụ 02: Viết câu lệnh SQL liệt kê tất cả các đơn hàng bị giao muộn từ [bảng Orders], biết rằng
ngày yêu cầu giao hàng là RequiredDate và ngày shipper giao hàng là ShippedDate. */
SELECT [OrderID],
       [RequiredDate],
       [ShippedDate]
FROM [Orders]
WHERE [ShippedDate] > [RequiredDate];
GO
-- Đếm số lượng đơn hàng bị giao muộn
SELECT COUNT(*) AS [NumbersOfLateDeliveryOrder]
FROM [Orders]
WHERE [ShippedDate] > [RequiredDate];
GO
-- Ví dụ 03: Viết câu lệnh SQL lấy ra tất cả các đơn đặt hàng được giảm giá nhiều hơn 10% từ [bảng Order Details]. 
SELECT *
FROM [Order Details]
WHERE [Discount] > 0.1;
GO

-- B. Bài tập. --
-- Bài tập 01: Viết câu lệnh SQL lấy ra tất cả các đơn đặt hàng được gửi đến quốc gia (ShipCountry) là "France" từ [bảng Orders]. 
SELECT *
FROM [Orders]
WHERE [ShipCountry] = 'France';
GO
-- Bài tập 02: Viết câu lệnh SQL liệt kê các sản phẩm có số lượng hàng trong kho (UnitsInStock) lớn hơn 20 từ [bảng Products]. 
SELECT *
FROM Products
WHERE UnitsInStock > 20;
GO

-- C. Thử thách. --
-- Thử thách 01: Viết câu lệnh SQL liệt kê ra 3 các nhà cung cấp đến từ "USA" từ [bảng Suppliers].
SELECT TOP 3 *
FROM Suppliers
WHERE Country = 'USA';
GO
/* Thử thách 02: Viết câu lệnh SQL tính tổng số tiền vận chuyển các đơn đặt hàng (Freight) được gửi
đến quốc gia (ShipCountry) là "Brazil" từ [bảng Orders]. */
SELECT SUM(Freight) AS [TotalFreight]
FROM Orders
WHERE ShipCountry = 'Brazil';
GO
/* Thử thách 03: Viết câu lệnh SQL lấy ra các sản phẩm có số lượng hàng tồn kho (RemainingStock)
lớn hơn hoặc bằng 0 từ [bảng Products]. Lưu ý là số lượng hàng TỒN KHO chứ không phải TRONG KHO. */
SELECT  [ProductID],
		[ProductName],
		[UnitsInStock],
		[UnitsOnOrder],
		([UnitsOnOrder] - [UnitsInStock]) AS [RemainingStock]
FROM Products
WHERE ([UnitsOnOrder] - [UnitsInStock]) >= 0;
GO
