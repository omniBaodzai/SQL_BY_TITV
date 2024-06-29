-- Bài 10: ORDER BY - Sắp xếp kết quả trả về. --

-- A. Ví dụ. --
-- Ví dụ 01: Viết câu lệnh SQL liệt kê tất cả các nhà cung cấp theo thứ tự tên công ty (CompanyName) từ A - Z từ [bảng Suppliers]. 
SELECT *
FROM Suppliers
ORDER BY CompanyName ASC; -- ascending: tăng dần.
GO
-- Hoặc: Không khuyến khích cách này.
SELECT *
FROM Suppliers
ORDER BY CompanyName;
GO
-- Ví dụ 02: Viết câu lệnh SQL liệt kê tất cả các sản phẩm theo thứ tự đơn giá (UnitPrice) giảm dần từ [bảng Products]. 
SELECT *
FROM Products
ORDER BY UnitPrice DESC; -- descending: giảm dần.
GO
/* Ví dụ 03: Viết câu lệnh SQL liệt kê tất cả các nhân viên theo thứ tự họ (LastName)
và tên (FirstName) từ A - Z từ [bảng Employees]. Không sử dụng ASC | DESC. */
SELECT *
FROM Employees
ORDER BY LastName, FirstName;
GO
-- Ví dụ 04: Viết câu lệnh SQL lấy ra một sản phẩm có số lượng (Quantity) bán cao nhất từ [bảng Order Details]. Không được sử dụng hàm MAX(). 
SELECT TOP 1 *
FROM [Order Details]
ORDER BY Quantity DESC;
GO

-- B. Bài tập. --
-- Bài tập 01: Viết câu lệnh SQL liệt kê danh sách các đơn đặt hàng (OrderID) theo thứ tự giảm dần của ngày đặt hàng (OrderDate) từ [bảng Orders]. 
SELECT OrderID
FROM Orders
ORDER BY OrderDate DESC;
GO
/* Bài tập 02: Viết câu lệnh SQL liệt kê tên sản phẩm (ProductName), đơn giá (UnitPrice), số lượng sản phẩmtrong kho (UnitsInStock) 
và sắp xếp các sản phẩm theo thứ tự giảm dần của (UnitsInstock) từ [bảng Product]. */
SELECT ProductName, UnitPrice, UnitsInStock
FROM Products
ORDER BY UnitsInStock DESC;
GO

-- C. Thử thách. --
/* Thử thách 01: Viết câu lệnh SQL lấy ra cột "Country" và đặt tên thay thế là "Quốc gia" từ [bảng Suppliers]. 
Và tên "Quốc gia" được sắp xếp theo thứ tự tăng dần từ A - Z. */
SELECT Country AS [Quốc gia]
FROM Suppliers
ORDER BY [Quốc gia] ASC;
GO
/* Thử thách 02: Viết câu lệnh SQL lấy ra số tiền vận chuyển (Freight) khác nhau và chỉ lấy
ra 2 dòng đầu tiên theo thứ tự giảm dần của số tiền vận chuyển (Freight) từ [bảng Orders]. */
SELECT DISTINCT TOP 2 Freight
FROM Orders
ORDER BY Freight DESC;
GO
/* Thử thách 03: Viết câu lệnh SQL lấy ra 3 nhân có viên có tên (FirstName), ngày sinh (BirthDate) và ngày tuyển dụng (HireDate) khác nhau
dựa theo tên (FirstName) từ A - Z từ [bảng Employees]. */
SELECT DISTINCT TOP 3 FirstName, BirthDate, HireDate
FROM Employees
ORDER BY FirstName ASC;
GO
