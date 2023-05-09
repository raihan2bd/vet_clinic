-- Stores information about patients
CREATE TABLE patients (
  id INT PRIMARY KEY Generated Always AS Identity,
  name VARCHAR(100),
  date_of_birth date
);