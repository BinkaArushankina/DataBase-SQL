В рамках БД "онлайн-магазин" напишите след/запросы:
1.)Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT ProductName, Price * 1.1 AS Price_USD FROM OrderDetails JOIN Products
    ON OrderDetails.ProductID=Products.ProductID ORDER BY Price DESC LIMIT 1

2.)Вывести два самых дорогих товара из категории Beverages из USA
SELECT ProductName, Price FROM Products
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Beverages')
  AND ProductID IN (SELECT ProductID FROM OrderDetails WHERE OrderID IN
                   (SELECT OrderID FROM Orders WHERE CustomerID IN
                   (SELECT CustomerID FROM Customers WHERE Country = 'USA')))
ORDER BY Price DESC LIMIT 2;

3.)Удалить товары с ценой менее 5 EUR
DELETE FROM Products WHERE Price <=5

4.)Вывести список стран, которые поставляют морепродукты
SELECT Country FROM Suppliers WHERE SupplierID IN
(SELECT SupplierID FROM Products WHERE CategoryID IN
(SELECT CategoryID FROM Categories WHERE CategoryName='Seafood'))

5.)Очистить поле ContactName у всех клиентов не из China
UPDATE Customers SET ContactName='' WHERE NOT Country='China'