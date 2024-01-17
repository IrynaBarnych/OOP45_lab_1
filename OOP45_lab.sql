--Виведіть прізвища та зарплати (сума ставки та надбавки) лікарів, які не перебувають у відпустці.
SELECT Surname AS DoctorSurname, Salary AS TotalSalary
FROM Doctors
WHERE NOT EXISTS(SELECT * FROM Vacations WHERE Vacations.doctor_id = Doctors.id AND 
				CURRENT_DATE BETWEEN start_date AND end_date)