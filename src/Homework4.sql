--В рамках БД "онлайн-магазин" напишите след/запросы:
--Найти мин/стоимость товаров для каждой категории
    SELECT CategoryID, MIN(Products.Price) FROM Products
    GROUP BY CategoryID

--Вывести ТОП-3 стран по количеству доставленных заказов
    SELECT Country, COUNT(*) AS order_count
    FROM OrderDetails
         JOIN Products ON OrderDetails.ProductID=Products.ProductID
         JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    GROUP BY Country
    ORDER BY order_count DESC LIMIT 3

--Вывести названия категорий, в которых более 10 товаров
    SELECT ProductName, COUNT(*) AS products_quantity FROM Products
         JOIN Categories ON Products.CategoryID=Categories.CategoryID
         JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID
    GROUP BY ProductName
    HAVING products_quantity >=10

--Очистить тел/номер поставщикам из USA
    UPDATE Suppliers
    SET Phone=''
    WHERE Country='USA'

--Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15
    SELECT LastName, FirstName, COUNT(OrderID) AS orders_count FROM Orders
        JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID
    GROUP BY LastName, FirstName
    HAVING orders_count <15

--Вывести товар, который находится на втором месте по ко-ву заказов
    SELECT ProductName, COUNT(*) AS order_count
    FROM Products
         JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID
    GROUP BY ProductName
    ORDER BY order_count DESC LIMIT 1 OFFSET 1


