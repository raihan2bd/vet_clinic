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

-- Stores invoices generated for medical histories
CREATE TABLE invoices (
  id INT PRIMARY KEY Generated Always AS Identity,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history_id INT UNIQUE CONSTRAINT fk_medical_history_id REFERENCES medical_histories(id)
);

-- Stores information about treatments
CREATE TABLE treatments (
  id INT PRIMARY KEY Generated Always AS Identity,
  type VARCHAR(100),
  name VARCHAR(100)
);