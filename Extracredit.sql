INSERT INTO imported_pokemon_data (pokedex_number, name, type1, attack1, attack2, attack3)
VALUES (802, 'Huskichu', 'Mascot'


CREATE TABLE trainer(first_name VARCHAR(80), last_name VARCHAR(80)
                    favorite_type1 TEXT, favorite_type2 TEXT,
                    team_member TEXT,
                    FOREIGN KEY(favorite_type1) REFERENCES imported
                    );
CREATE TABLE favorite_ptype(type VARCHAR(20),
