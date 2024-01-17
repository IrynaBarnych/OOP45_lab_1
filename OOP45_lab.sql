--Виведіть назви палат, які знаходяться у відділенні «Intensive Treatment».
SELECT W.Name AS WardName
FROM Wards W
JOIN Departments D ON W.Building = D.Building
WHERE D.Name = 'Oncology'