-- Виведіть усі пожертвування за останній місяць у вигляді: 
-- відділення, спонсор, сума пожертвування, дата пожертвування.


-- Вивести усі пожертвування за останній місяць
SELECT
    Departments.Name AS Відділення,
    Sponsors.Name AS Спонсор,
    Donations.Amount AS "Сума пожертвування",
    Donations.Date AS "Дата пожертвування"
FROM
    Departments
JOIN
    Donations ON Departments.Id = Donations.Department_Id
JOIN
    Sponsors ON Donations.Sponsor_Id = Sponsors.Id
WHERE
    EXTRACT(MONTH FROM Donations.Date) = EXTRACT(MONTH FROM CURRENT_DATE)
    AND EXTRACT(YEAR FROM Donations.Date) = EXTRACT(YEAR FROM CURRENT_DATE);


-- Вивести усі пожертвування за певний період
SELECT
    Departments.Name AS "Відділення",
    Sponsors.Name AS "Спонсор",
    Donations.Amount AS "Сума пожертвування",
    Donations.Date AS "Дата пожертвування"
FROM
    Departments
JOIN
    Donations ON Departments.Id = Donations.Department_Id
JOIN
    Sponsors ON Donations.Sponsor_Id = Sponsors.Id
WHERE
    Donations.Date BETWEEN '1900-01-01' AND '2023-12-31'; -- Замініть дати на бажаний діапазон



