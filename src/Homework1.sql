1.) Приведите 5 типовых бизнес-процессов для любой предметной области (кроме интернет-магазина), а также их соответствие по CRUD.
Бухгалтерия
1 Приём на работу, оформление нового работника, внесение работника в базу - Created.
2 Повышение, смена рабочего места, новый рабочий договор - Update.
3 Проверка отчётов по работе, выполненной работы - Read.
4 Повышение зарплаты - Update.
5 Увольнение - Update(через год Delete).

2.) В рамках БД "песочница" напишите след/запросы:
Вывести название и стоимость товаров от 20 EUR.
SELECT ProductName, Price FROM Products WHERE Price >=20

3.) Вывести страны поставщиков.
SELECT DISTINCT Country FROM Suppliers

4.) В упорядоченном по стоимости виде вывести название
и стоимость товаров со скидкой в 9% от всех поставщиков, кроме поставщика 1.
SELECT ProductName, Price * .91 AS Price_down FROM Products ORDER BY Price ASC LIMIT 77 OFFSET 1

5.) Вывести контактные имена клиентов, кроме тех, что из France и USA.
SELECT CustomerName FROM Customers WHERE NOT Country="France" AND NOT Country="USA"

