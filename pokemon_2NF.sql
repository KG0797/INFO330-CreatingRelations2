CREATE TABLE Pokemon( 
  pokedex_number INT, 
  name VARCHAR(55),
  classification VARCHAR(50),
  type1 VARCHAR(20),
  type2 VARCHAR(20),
  height_m DECIMAL(3,1),
  weight_kg DECIMAL(4,1),
  capture_rate INT,
  base_egg_steps INT,
  base_happiness INT,
  experience_growth INT,
  is_legendary BOOLEAN
);


CREATE TABLE type(
  pokedex_number INT,
  slot INT,
  type VARCHAR(20),
  FOREIGN KEY(pokedex_number) REFERENCES imported_pokemon_data(pokedex_number)
  
  
