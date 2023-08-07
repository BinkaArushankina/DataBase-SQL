В рамках БД "онлайн-магазин" напишите след/запросы:
Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil
    SELECT COUNT(*) FROM Orders
    JOIN Customers ON Orders.CustomerID=Customers.CustomerID
    JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
    WHERE Customers.Country="Brazil" AND Shippers.ShipperName="Speedy Express"

Вывести среднюю стоимость проданного в Germany товара
    SELECT AVG(Price) FROM Products
    JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID
    WHERE Suppliers.Country="Germany"

Вывести ко-во и сред/стоимость товаров из USA
    SELECT Count(*), AVG(Products.Price) FROM Products
    JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    WHERE Suppliers.Country="USA"

Вывести стоимость и название двух самых дешевых товаров из Germany
    SELECT Products.Price, Products.ProductName FROM Products
    JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    WHERE Suppliers.Country="Germany"
    ORDER BY Products.Price ASC LIMIT 2

Применить наценку в 15% ко всем товарам из категории 4
    UPDATE Products
    SET Price=Price * 1.15
    WHERE CategoryID=4

Доп.задача
создать схему БД для "онлайн-игры: шахматы" с помощью инструмента онлайн-проектирования

    src/drawio_chess.png




