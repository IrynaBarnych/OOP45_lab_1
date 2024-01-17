-- Виведіть повні імена лікарів та їх спеціалізації.
SELECT Doctors.Name || ', ' || Doctors.surname AS DoctorName, string_agg(Specializations.name, ', ') AS Specialization
FROM Doctors
JOIN DoctorsSpecializations ON Doctors.Id = DoctorsSpecializations.Doctor_id
JOIN Specializations ON DoctorsSpecializations.Specialization_id = Specializations.id
GROUP BY Doctors.Id