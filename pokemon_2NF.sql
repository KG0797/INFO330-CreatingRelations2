-- create a new table that include all the basic information of a pokemon 
--from knowing the name(the primary key) of the pokemon
CREATE TABLE if not EXISTS pokemon_info (
name string PRIMARY KEY,
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

-- select the columns for pokemon_info from imported_pokemon_data
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
type2
FROM imported_pokemon_data;
