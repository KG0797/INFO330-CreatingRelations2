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
  FOREIGH key(id) REFERENCES trainer(id)
);
CREATE TABLE pokemon_team(
  id INT,
  pokedex_number INT,
  FOREIGH KEY(id) REFERENCES trainer(id),
  FOREIGH KEY(pokedex_number) REFERENCES imported_pokemon_data(pokedex_number)
);
        
INSERT INTO trainer(first_name, last_name)
  
                     
                     
                    favorite_type1 TEXT, favorite_type2 TEXT,
                    team_member TEXT,
                    FOREIGN KEY(favorite_type1) REFERENCES imported
                    );
CREATE TABLE favorite_ptype(type VARCHAR(20),
