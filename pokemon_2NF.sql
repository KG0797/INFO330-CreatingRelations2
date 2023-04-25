CREATE TABLE type_against (
  type1 TEXT, 
  type2 TEXT,
  against_bug FLOAT,
  against_dark FLOAT,
  against_dragon FLOAT,
  against_electric FLOAT,
  against_fairy FLOAT,
  against_fight FLOAT,
  against_fire FLOAT,
  against_flying FLOAT,
  against_ghost FLOAT,
  against_grass FLOAT,
  against_ground FLOAT,
  against_normal FLOAT,
  against_poison FLOAT,
  against_psychic FLOAT,
  against_rock FLOAT,
  against_steel FLOAT,
  against_water FLOAT,
  FOREIGN KEY(type1) REFERENCES imported_pokemon_data(type1),
  FOREIGN KEY(type2) REFERENCES imported_pokemon_data(type2),
  PRIMARY KEY(type1, type2),
  CONSTRAINT unique_type_combination UNIQUE(type1, type2)
);
  
-- 
INSERT INTO type_against (type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
SELECT type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water
FROM imported_pokemon_data;
