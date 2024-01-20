-- Виведіть назви відділень, які отримували пожертвування
-- у розмірі понад 100000, із зазначенням їх лікарів.


SELECT DISTINCT Departments.Name AS "Назва відділення"
FROM Departments 
JOIN Donations ON Departments.Id = Donations.Department_Id
WHERE Donations.amount > 10000;



