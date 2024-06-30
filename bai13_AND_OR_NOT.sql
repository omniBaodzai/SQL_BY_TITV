-- Bài 13: Kết hợp điều kiện bằng toán tử AND, OR, NOT trong SQL. --

-- A. Ví dụ. --
/* Ví dụ 01: Viết câu lệnh SQL liệt kê tất cả các sản phẩm có số lượng hàng trong kho (UnitsInStock)
nhỏ hơn 50 hoặc lớn hơn 100 từ [bảng Products]. */
SELECT *
FROM [Products]
WHERE [UnitsInStock] < 50 OR [UnitsInStock] > 100;
GO
/* Ví dụ 02: Viết câu lệnh SQL liệt kê tất cả các đơn đặt hàng được giao đến "Brazil" đã bị giao muộn từ [bảng Orders],
biết ngày yêu cầu giao hàng là RequiredDate và ngày giao hàng thực tế là ShippedDate. */
SELECT *
FROM [Orders]
WHERE [ShipCountry] = 'Brazil' AND [ShippedDate] > [RequiredDate];
GO
/* Ví dụ 03: Viết câu lệnh SQL lấy ra tất cả các sản phẩm có giá (UnitPrice) nhỏ hơn 100$ và có mã thể loại (CategoryID) khác 1 từ [bảng Products].
Sử dụng toán tử NOT. */
-- Cách 1:
SELECT *
FROM [Products]
WHERE NOT ([UnitPrice] >= 100 OR [CategoryID] = 1)               
GO
-- Cách 2:
SELECT *
FROM [Products]
WHERE (NOT [UnitPrice] >= 100) AND (NOT [CategoryID] = 1);               
GO
-- Cách 3:
SELECT *
FROM [Products]
WHERE [UnitPrice] < 100 AND [CategoryID] != 1;               
GO

-- B. Bài tập. --
/* Bài tập 01: Viết câu lệnh SQL liệt kê tất cả các đơn đặt hàng có giá tiền vận chuyển (Freight)
nằm trong trong khoảng [50, 100] từ [bảng Orders]. */
-- Cách 1:
SELECT *
FROM [Orders]
WHERE NOT ([Freight] < 50 OR [Freight] > 100);
GO
-- Cách 2:
SELECT *
FROM [Orders]
WHERE [Freight] >= 50 AND [Freight] <= 100;
GO
-- Cách 3:
SELECT *
FROM [Orders]
WHERE  (NOT [Freight] < 50) AND (NOT [Freight] > 100);
GO
/* Bài tập 02: Viết câu lệnh SQL liệt kê các sản phẩm có số lượng hàng trong kho (UnitsInStock)
lớn hơn 20 và số lượng hàng trong đơn hàng (UnitsOnOrder) nhỏ hơn 20 từ [bảng Products]. */
-- Cách 1:
SELECT *
FROM [Products]
WHERE [UnitsInStock] > 20 AND [UnitsOnOrder] < 20;
GO
-- Cách 2:
SELECT *
FROM [Products]
WHERE NOT ([UnitsInStock] <= 20 OR [UnitsOnOrder] >= 20);
GO
-- Cách 3:
SELECT *
FROM [Products]
WHERE (NOT [UnitsInStock] <= 20) AND (NOT [UnitsOnOrder] >= 20);
GO

-- C. Thử thách. --
/* Thử thách 01: Viết câu lệnh SQL liệt kê các nhà cung cấp đến từ các quốc gia (Country)
là "Japan" hoặc "Australia" từ [bảng Suppliers]. */
SELECT *
FROM [Suppliers]
WHERE [Country] = 'Japan' OR [Country] = 'Australia';
GO
/* Thử thách 02: Viết câu lệnh SQL lấy ra các sản phẩm có số lượng hàng tồn kho không âm
từ [bảng Products]. Sử dụng toán tử NOT. */
SELECT [ProductID],
       [ProductName],
       [UnitsInStock],
       [UnitsOnOrder],
       [UnitsOnOrder] - [UnitsInStock] AS [RemainingStock]
FROM [Products]
WHERE NOT ([UnitsOnOrder] - [UnitsInStock] < 0);
GO











