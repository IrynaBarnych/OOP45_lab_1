-- Виведіть прізвища лікарів із зазначенням відділень,
-- в яких вони проводять обстеження. Враховуйте обстеження, 
-- які проводяться лише у будні дні.

SELECT
    Doctor.Surname AS "Прізвище лікаря",
    Examinations.Name AS "Відділення"
FROM
    Doctors Doctor
JOIN
    DoctorsSpecializations DS ON Doctor.Id = DS.Doctor_Id
JOIN
    Examinations ON DS.specialization_id = Examinations.Id
WHERE
    Examinations.DayOfWeek BETWEEN 1 AND 5;



