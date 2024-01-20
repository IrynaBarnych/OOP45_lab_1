-- Виведіть назви відділень і назви захворювань, 
-- обстеження з яких вони проводили за останні півроку.

SELECT DISTINCT
    Departments.Name AS "Назва відділення",
    Diseases.Name AS "Назва захворювання"
FROM
    Departments
JOIN
    Examinations ON Departments.Id = Examinations.Id
JOIN
    Diseases ON Examinations.Id = Diseases.Id
	
WHERE 
	EXTRACT(MONTH FROM '2024-01-01'::DATE) BETWEEN 1 AND 6;













