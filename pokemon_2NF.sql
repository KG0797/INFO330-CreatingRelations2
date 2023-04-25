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
  base_total INT,
  experience_growth INT,
  generation INT,
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
  pokedex_number INT,
  attacking_type_id INT,
  against_type_id INT,
  multiplier DECIMAL(2,1),
  PRIMARY KEY (pokedex_number, attacking_type_id, against_type_id),
  FOREIGN KEY(against_type_id) REFERENCES types(type1),
  FOREIGN KEY(attacking_type_id) REFERENCES types(type2));
  
  

CREATE TABLE type(
  pokedex_number INT,
  type TEXT,
  FOREIGN KEY(pokedex_number) REFERENCES imported_pokemon_data(pokedex_number)
  
  
