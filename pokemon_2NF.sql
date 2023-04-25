CREATE TABLE if not EXISTS type_against (
  pokemon_type STRING PRIMARY KEY, 
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
  against_water FLOAT
);
  
-- 
INSERT INTO type_against (pokemon_type, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
SELECT type1, type2, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water
FROM imported_pokemon_data;

CREATE TABLE if not EXISTS pokemon_info (
name string,
attack string,
base_egg_steps string,
base_happiness string,
base_total string,
capture_rate string,
classfication string,
defense string,
experience_growth string,
height_m string,
hp string,
percentage_male string,
sp_attack string,
sp_defense string,
speed string,
weight_kg string,
generation string,
is_legendary string,
type1 string,
type2 string
);
INSERT INTO pokemon_info
SELECT name,
attack,
base_egg_steps,
base_happiness,
base_total,
capture_rate,
classfication,
defense,
experience_growth,
height_m,
hp,
percentage_male,
sp_attack,
sp_defense,
speed,
weight_kg,
generation,
is_legendary,
type1,
type2 FROM imported_pokemon_data;
