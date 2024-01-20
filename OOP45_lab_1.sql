-- Виведіть назви відділень, в яких лікарі не отримують надбавки.

SELECT DISTINCT Departments.Name AS "Назва відділення"
FROM Departments
WHERE NOT EXISTS (
    SELECT 1
    FROM DoctorsSpecializations
    JOIN Doctors ON DoctorsSpecializations.doctor_id = Doctors.Id
    WHERE DoctorsSpecializations.specialization_id = Departments.Id AND Doctors.Salary = 0
);
