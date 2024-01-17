--додати зв'язок між Wards та Departments, додати надбавку лікарям
ALTER TABLE Wards
ADD COLUMN Department_Id INT REFERENCES Departments(id);
--додати надбавку лікарям
ALTER TABLE Doctors
ADD COLUMN Premium DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK (Premium >= 0);