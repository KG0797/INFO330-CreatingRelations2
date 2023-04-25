INSERT INTO imported_pokemon_data (pokedex_number, name, type1, attack, defense, hp, sp_attack, sp_defense, speed, generation)
VALUES (802, 'Huskichu', 'Mascot'
VALUES (803, 'Cougarite', 'Mascot', 'Slow Attack', 78, 60, 45, 56, 50, 1)

CREATE TABLE trainer(
  id INT PRIMARY KEY,
  first_name VARCHAR(80),
  last_name VARCHAR(80)
);
CREATE TABLE favorite_pokemon_types(
  id INT,
  type VARCHAR(70),
  FOREIGN KEY(id) REFERENCES trainer(id)
);
CREATE TABLE pokemon_team(
  id INT,
  pokemon_member STRING,
  FOREIGN KEY(id) REFERENCES trainer(id)
);
        
INSERT INTO trainer(id, first_name, last_name)
VALUES (1, 'Ted', 'Neward'),
       (2, 'Justin', 'Dong'),
       (3, 'Katherine', 'Guo'),
       (4, 'Jackie', 'Mao');

INSERT INTO favorite_pokemon_types (id, type) 
        VALUES(1, 'fighting'),
              (1, 'dragon'),
              (2, 'Water'),
              (3, 'rock'),
              (3, 'fire'),
              (4, 'poison');
INSERT INTO pokemon_team (id, pokemon1, pokemon2,  pokemon3,  pokemon4, pokemon5,  pokemon6,  pokemon7,  pokemon8,  pokemon9,  pokemon10)
        VALUES (1, 'Bulbasaur', 'Ivysaur', 'Venusaur', 'Charmander', 'Charmeleon', NULL, NULL, NULL, NULL, NULL),
        (2, 'Butterfree', 'Weedle', 'Kakuna', 'Beedrill', 'Pidgey', 'Pidgeotto', NULL, NULL, NULL, NULL),
        (3, 'Pidgey', 'Pidgeotto', 'Pidgeot', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
        (4, 'Clefable', 'Vulpix', 'Ninetales', 'Jigglypuff', 'Wigglytuff', 'Zubat', 'Golbat', 'Oddish', 'Gloom', NULL);
         
                
                
 CREATE TABLE pokemon_team(
  id INT,
  pokemon1 STRING,
  pokemon2 STRING,
  pokemon3 STRING,
  pokemon4 STRING,
  pokemon5 STRING,
  pokemon6 STRING,
  pokemon7 STRING,
  pokemon8 STRING,
  pokemon9 STRING,
  pokemon10 STRING,
  FOREIGN KEY(id) REFERENCES trainer(id)
);

