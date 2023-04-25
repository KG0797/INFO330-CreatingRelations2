CREATE TABLE type_against (
  pokedex_number INT PRIMARY KEY,
  name TEXT,
  type1 TEXT, 
  type2 TEXT
  against_bug INT,
  against_dark INT,
  against_dragon INT,
  against_electric INT,
  against_fairy INT,
  against_fight INT,
  against_fire INT,
  against_flying INT,
  against_ghost INT,
  against_grass INT,
  against_ground INT,
  
  FOREIGN KEY(type1) REFERENCES imported_pokemon_data(type1),
  FOREIGN KEY(type2) REFERENCES imported_pokemon_data(type2),
  FOREIGN KEY(
);
  
INSERT INTO types(pokedex_number, name)
SELECT DISTINCT type_name
