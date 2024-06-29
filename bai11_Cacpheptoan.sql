-- Bài 11: Các phép toán trong SQL Server. --

|---------------|---------------------|------------------------|---------------------|
|   Phép toán   |     Descriotion     |       Giải thích       |        Ví dụ        |
|---------------|---------------------|------------------------|---------------------|
|      +        |       Addition      |          Cộng          |      1 + 1 = 2      |
|---------------|---------------------|------------------------|---------------------|
|      -        |      Subtraction    |          Trừ           |      2 - 2 = 0      |
|---------------|---------------------|------------------------|---------------------|
|      *        |    Multiplication   |          Nhân          |      2 * 3 = 6      |
|---------------|---------------------|------------------------|---------------------|
|      /        |       Division      |          Chia          |      5 / 2 = 2.5    |
|---------------|---------------------|------------------------|---------------------|
|      %        |        Modulo       |    Chia lấy phần dư    |      5 % 2 = 1      |
|---------------|---------------------|------------------------|---------------------|

-- A. Ví dụ. --
/* Ví dụ 01: Viết câu lệnh SQL tính số lượng sản phẩm còn lại trong kho (UnitsInStock) sau khi bán hết
các sản phẩm đã được đặt hàng (UnitsOnOrder) từ [bảng Products]. */
SELECT [ProductID],
	   [ProductName],
	   [UnitsInStock],
	   [UnitsOnOrder],
	   ([UnitsInStock] - [UnitsOnOrder]) AS [RemainingStock]
FROM [Products];
GO
-- Ví dụ 02: Viết câu lệnh SQL tính giá trị đơn hàng chi tiết cho tất cả các sản phẩm từ [bảng Order Details].
SELECT *,
       ([UnitPrice] * [Quantity]) AS [OrderDetailValue]
FROM [Order Details];       
GO   
/* Ví dụ 03: Viết câu lệnh SQL tính tỷ lệ giá vận chuyển đơn đặt hàng (Freight) trung bình của các đơn hàng
trong [bảng Orders] so với giá trị vận chuyển của đơn hàng lớn nhất (MaxFreight). */
SELECT AVG([Freight]) / MAX([Freight]) AS [FreightRatio]
FROM Orders;
GO

-- B. Bài tập. --
/* Bài tập 01: Viết câu lệnh SQL liệt kê danh sách các sản phẩm và giá (UnitPrice) của từng
sản phẩm sẽ được giảm đi 10% từ [bảng Products]. */
-- Gợi ý: Giá bán sản phẩm sau khi giảm giá = [Giá tiền x (100 – phần trăm giảm giá)] / 100.
-- Cách 1: Dùng phép nhân và phép chia.
SELECT [ProductID],
       [ProductName],
       [UnitPrice],
	   ([UnitPrice] * (100 - 10)) / 100 AS [UnitPriceDecrease]
FROM Products;
GO
-- Cách 2: Dùng phép nhân.
SELECT [ProductID],
       [ProductName],
       [UnitPrice],
	   ([UnitPrice] * 0.9) AS [UnitPriceDecrease]
FROM Products;
GO

-- C. Thử thách. --
/* Thử thách 01: Giả sử các sản phẩm trong [bảng Products] đã được giảm giá xuống còn 1.2 (đồng). Hãy viết
câu lệnh SQL tính phần trăm giá đã giảm của các sản phẩm đó từ [bảng Products]. */
-- Ví dụ. Quần và mũ đều có giá 10 đồng, giá cả quần và mũ sau khi đã giảm chỉ còn 1.2 đồng, thì giá đã giảm 88%.
-- Gợi ý: Phần trăm giảm giá = [100 - (Giá bán sản phẩm sau giảm giá / Giá tiền)] x 100
SELECT [ProductID],
       [ProductName],
       [UnitPrice],
       (100 - (1.2 / [UnitPrice])) * 100 [PercentOfUnitPriceDecreased]
FROM [Products];
GO
/* Thử thách 02: Viết câu lệnh SQL tính giá (UnitPrice) của các sản phẩm sau giá khi tăng 20% 
từ [bảng Products]. */
-- Gợi ý: Giá bán sản phẩm sau khi tăng giá = [Giá tiền x (100 + phần trăm tăng giá)] / 100.
SELECT [ProductID],
       [ProductName],
       [UnitPrice],
	   ([UnitPrice] * (100 + 20)) / 100 AS [UnitPriceIncrease]
FROM Products;
GO
