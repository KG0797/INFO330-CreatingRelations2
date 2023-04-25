CREATE TABLE type_against (
  pokedex_number INT PRIMARY KEY,
  name TEXT,
  type1 TEXT, 
  type2 TEXT
  against_to INT,
  FOREIGN KEY(type1) REFERENCES imported_pokemon_data(type1),
  FOREIGN KEY(type2) REFERENCES imported_pokemon_data(type2)
);
  
INSERT INTO types(pokedex_number, name)
SELECT DISTINCT type_name
