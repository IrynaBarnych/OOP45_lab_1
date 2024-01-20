-- Виведіть назви відділень без повторень, 
-- які спонсоруються компанією «Umbrella Corporation».

-- Вивести унікальні назви відділень
SELECT DISTINCT Departments.Name
FROM Departments;

-- Обрати відділення, які спонсоруються "Umbrella Corporation"
SELECT DISTINCT Departments.Name
FROM Departments
JOIN Donations ON Departments.Id = Donations.Department_Id
JOIN Sponsors ON Donations.Sponsor_Id = Sponsors.Id
WHERE Sponsors.name = 'Umbrella Corporation';







