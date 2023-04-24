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

CREATE TABLE pokemon_stats(
  pokedex_number INT,
  hp,
  attack,
  defense,
  sp_attack,
  sp_defense,
  speed
);
  
CREATE TABLE against(
  against_type VARCHAR(20),
  FOREIGN KEY(against_type) REFERENCES type(
  
  

CREATE TABLE type(
  pokedex_number INT,
  type TEXT,
  FOREIGN KEY(pokedex_number) REFERENCES imported_pokemon_data(pokedex_number)
  
  
