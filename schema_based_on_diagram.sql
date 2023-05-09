-- Stores information about patients
CREATE TABLE patients (
  id INT PRIMARY KEY Generated Always AS Identity,
  name VARCHAR(100),
  date_of_birth date
);

-- Stores medical histories for patients
CREATE TABLE medical_histories(
  id INT PRIMARY KEY Generated Always AS Identity,
  admited_at TIMESTAMP,
  patient_id INT CONSTRAINT fk_patient_id REFERENCES patients(id),
  status VARCHAR(100)
);
