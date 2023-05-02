-- Create animals table
CREATE TABLE animals (
   id INT Generated ALWAYS AS IDENTITY PRIMARY KEY,
    name  VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg Decimal
);

-- Alter table to add a column Species
ALTER TABLE animals
    ADD species VARCHAR(100);

-- Create a table for the owners
CREATE TABLE owners (
    id INT Generated ALWAYS AS IDENTITY PRIMARY KEY,
    full_name VARCHAR(100),
    age INT
);

-- Create a table for the Species
CREATE TABLE species (
    id INT Generated ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100)
);


