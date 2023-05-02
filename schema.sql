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

-- Alter table remove column species
ALTER TABLE animals
    DROP COLUMN species;

-- Alter table add column species_id with foreign key
ALTER TABLE animals
    ADD column species_id INT CONSTRAINT fk_species_id REFERENCES species(id);

-- Alter table add column owner_id with foreign key
ALTER TABLE animals
    ADD column owner_id INT CONSTRAINT fk_owner_id REFERENCES owners(id);

-- Create a table for the vets
CREATE TABLE vets (
    id INT Generated ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    date_of_graduation DATE
);

