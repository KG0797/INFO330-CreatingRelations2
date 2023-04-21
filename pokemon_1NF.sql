CREATE TABLE Pokemon_abilities (pokedex_number INTEGER NOT NULL, ability TEXT NOT NULL, FOREIGN KEY(pokedex_number) REFERENCES pokemon(pokedex_number)
INSERT INTO pokemon_abilities (pokemon_id, ability)
SELECT id, TRIM(LOWER(ability)) AS ability
From pokemon, json_each('[' || REPLACE(abilities, "'", "\"") || ']');

