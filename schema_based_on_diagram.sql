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

-- Stores invoice items for each invoice
CREATE TABLE invoice_items (
  id INT PRIMARY KEY Generated Always AS Identity,
  unit_price DECIMAL,
  quantity INT,
  total_price DECIMAL,
  invoice_id INT CONSTRAINT fk_invoice_id REFERENCES invoices(id),
  treatment_id INT CONSTRAINT fk_treatment_id REFERENCES treatments(id)
);

-- Stores the history of treatments for each medical history
CREATE TABLE treatment_histories (
  medical_history_id INT CONSTRAINT fk_medical_history_id REFERENCES medical_histories(id) ON DELETE CASCADE,
  treatment_id INT CONSTRAINT fk_treatment_id REFERENCES treatments(id) ON DELETE CASCADE
);

-- Create unique indexes to improve query execution time
 CREATE INDEX idx_medical_histories_patient_id ON medical_histories(patient_id);
 CREATE INDEX idx_invoices_medical_history_id ON invoices(medical_history_id);
 CREATE INDEX idx_invoice_items_invoice_id ON invoice_items(invoice_id);
 CREATE INDEX idx_invoice_items_treatment_id ON invoice_items(treatment_id);
 CREATE INDEX idx_treatment_histories_medical_history_id ON treatment_histories(medical_history_id);
 CREATE INDEX idx_treatment_histories_treatment_id ON treatment_histories(treatment_id);