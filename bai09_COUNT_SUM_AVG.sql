-- Bài 09: Các hàm COUNT, SUM, AVG. --

-- A. Ví dụ. --
-- Ví dụ 01: Viết câu lệnh SQL đếm số lượng khách hàng (CustomerID) từ bảng "Customers".
SELECT COUNT(*) AS [NumbersOfCustomers]
FROM Customers;
GO
-- Hoặc: Không khuyến khích cách này.
SELECT COUNT(CustomerID) AS [NumbersOfCustomers]
FROM Customers;
GO
-- Ví dụ 02: Viết câu lệnh SQL tính tổng số tiền vận chuyển (Freight) của các đơn đặt hàng từ bảng "Orders".
SELECT SUM(Freight) AS [TotalFreight]
FROM Orders;
GO
-- Ví dụ 03: Viết câu lệnh SQL tính trung bình số lượng đơn đặt hàng (Quantity) của các sản phẩm từ bảng "Orders Details". 
SELECT AVG(Quantity) AS [AvgQuantity]
FROM [Order Details];
GO
/* Ví dụ 04: Viết câu lệnh SQL đếm số lượng sản phầm (ProductID), tính tổng số lượng hàng trong kho (UnitsInStock)
và tính trung bình đơn giá (UnitPrice) của các sản phẩm từ bảng "Product". */
SELECT COUNT(*) AS [NumbersOfProducts],
       SUM(UnitsInStock) AS [TotalUnitsInStock],
       AVG(UnitPrice) AS [AvgUnitPrice]
FROM Products;
GO

-- B. Bài tập. --
-- Bài tập 01: Viết câu lệnh SQL đếm số lượng đơn đặt hàng từ bảng "Order" theo 2 cách:
-- Cách 1: Dùng dấu *.
SELECT COUNT(*) AS [NumbersOfOrders]
FROM Orders;
GO
-- Cách 2: Dùng mã đơn đặt hàng (OrderID).
SELECT COUNT(OrderID) AS [NumbersOfOrders]
FROM Orders;
GO
/* Bài tập 02: Viết câu lệnh SQL tính trung bình cho cột "UnitPrice" và tính tổng cho cột "Quantity"
từ bảng "Order Details". */
SELECT AVG(UnitPrice) AS [AvgUnitPrice],
       SUM(Quantity) AS [TotalQuantity]
FROM [Order Details];
GO

-- C. Thử thách. --
-- Thử thách 01: Viết câu lệnh SQL đếm số lượng người giao hàng (ShipperID) từ bảng "Shipper" theo 2 cách.
-- Cách 1: Dùng dấu *.
SELECT COUNT(*) AS [NumbersOfShippers]
FROM Shippers;
GO
-- Cách 2: Dùng mã người giao hàng (ShipperID).
SELECT COUNT(ShipperID) AS [NumbersOfShippers]
FROM Shippers;
GO
-- Thử thách 02: Viết câu lệnh SQL tính tổng số đơn đang đặt hàng (UnitsOnOrder) của các sản phẩm từ bảng "Products". 
SELECT SUM(UnitsOnOrder) AS [TotalUnitsOnOrder]
FROM Products;
GO
-- Thử thách 03: Viết câu lệnh SQL tính trung bình số đơn được đặt hàng lại (ReorderLevel) của các sản phẩm từ bảng "Products". 
SELECT AVG(ReorderLevel) AS [AvgReorderLevel]
FROM Products;
GO
