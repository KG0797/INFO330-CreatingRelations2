INSERT INTO pokemon_info (pokedex_number, name, attack, base_egg_steps, base_happiness, base_total, capture_rate, classfication, defense, experience_growth, height_m, hp, percentage_male, sp_attack, sp_defense, speed, weight_kg, generation, is_legendary, pokemon_type)
VALUES (802, 'Huskichu', 34, null, null, null, null, null, 110, null, null, 130, null, 160, 110, 200, null, 2, false, 'Mascot'),
        (803, 'Cougarite', 0, null, null,null, null, null, 5, null, null, 60, null,  null, 10, 50, null, 1, false, 'Mascot');


-- create a trainer table stores a couple of trainers and their pokemon team.
CREATE TABLE trainer(
  id INT PRIMARY KEY,
  first_name VARCHAR(80),
  last_name VARCHAR(80),
  favorite_pokemon_types STRING,
  pokemon1 STRING,
  pokemon2 STRING,
  pokemon3 STRING,
  pokemon4 STRING,
  pokemon5 STRING,
  pokemon6 STRING,
  pokemon7 STRING,
  pokemon8 STRING,
  pokemon9 STRING,
  pokemon10 STRING
);

INSERT INTO trainer(id, first_name, last_name, favorite_pokemon_types, pokemon1, pokemon2,  pokemon3,  pokemon4, pokemon5,  pokemon6,  pokemon7,  pokemon8,  pokemon9,  pokemon10 )
VALUES (1, 'Ted', 'Neward',  'fighting/dragon' ,'Bulbasaur', 'Ivysaur', 'Venusaur', 'Charmander', 'Charmeleon', NULL, NULL, NULL, NULL, NULL ),
       (2, 'Justin', 'Dong', 'water', 'Butterfree', 'Weedle', 'Kakuna', 'Beedrill', 'Pidgey', 'Pidgeotto', NULL, NULL, NULL, NULL),
       (3, 'Katherine', 'Guo', 'rock/fire', 'Pidgey', 'Pidgeotto', 'Pidgeot', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       (4, 'Jackie', 'Mao', 'poison', 'Clefable', 'Vulpix', 'Ninetales', 'Jigglypuff', 'Wigglytuff', 'Zubat', 'Golbat', 'Oddish', 'Gloom', NULL);
