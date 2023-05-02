-- Insert data into the animals table
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
  VALUES ('Agumon','2020-02-03', 0, false, 10.23),
    ('Gabumon', '2018-11-15', 2, TRUE, 8),
    ('Pikachu', '2021-01-07', 1, FALSE, 15.04),
    ('Devimon', '2017-05-12', 5, TRUE, 11);

-- Insert more data into animals table
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
  VALUES ('Charmander', '2020-02-08', 0, false, -11),
    ('Plantmon', '2021-11-15', 2, true, -5.7),
    ('Squirtle', '1993-04-02', 3, false, -12.13),
    ('Angemon', '2005-06-12', 1, true, -45),
    ('Boarmon', '2005-06-07', 7, true, 20.4),
    ('Blossom', '1998-10-13', 3, true, 17),
    ('Ditto', '2022-05-14', 4, true, 22);

-- Insert data into owners table
INSERT INTO owners (full_name, age)
  VALUES ('Sam Smith', 34),
    ('Jennifer Orwell', 19),
    ('Bob',45), ('Melody Pond', 77), 
    ('Dean Winchester', 14), 
    ('Joddie Whittaker', 38);

INSERT INTO species (name)
  VALUES ('Pokemon'),
    ('Digimon');

-- Modify inserted animals so it includes the species_id value
UPDATE animals
  SET species_id = 2
  WHERE name LIKE '%mon';

UPDATE animals SET species_id = 1
  WHERE species_id IS NULL;

-- Modify animals table owner_id column by owner name and animal name
UPDATE animals SET owner_id = 1
  WHERE name='Agumon';
UPDATE animals SET owner_id = 2
  WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3
  WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4
  WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5
  WHERE name IN ('Angemon', 'Boarmon');

-- Insert data into the vets table
INSERT INTO vets (name, age, date_of_graduation)
  VALUES ('William Tatcher', 45, '2000-04-23'),
  ('Maisy SMith', 26, '2019-01-17'),
  ('Stephanie Mendez', 64, '1981-05-04'),
  ('Jack Harness', 38, '2008-06-08');

-- Insert data into specializations table
INSERT INTO specializations (vet_id, species_id)
  VALUES (1, 1),(3, 1),(3, 2),(4, 2);
