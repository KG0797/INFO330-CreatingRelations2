-- create a new table that include all the basic information of a pokemon 
--from knowing the name(the primary key) of the pokemon
CREATE TABLE if not EXISTS pokemon_info (
pokedex_number int PRIMARY KEY,
name string,
attack int,
base_egg_steps int,
base_happiness int,
base_total int,
capture_rate int,
classfication string,
defense int,
experience_growth int,
height_m float,
hp int,
percentage_male float,
sp_attack int,
sp_defense int,
speed int,
weight_kg float,
generation int,
is_legendary boolean,
type1 string,
type2 string
);

-- select the columns for pokemon_info from imported_pokemon_data
INSERT INTO pokemon_info
SELECT 
pokedex_number,
name,
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
