CREATE TABLE pokemon_abilities(
pokedex_number INT,
name VARCHAR(255),
ability VARCHAR(255),
FOREIGN KEY (name) REFERENCES imported_pokemon_data(name),
FOREIGN KEY (pokedex_number) REFERENCES imported_pokemon_data(pokedex_number));


WITH RECURSIVE split (pokedex_number, name, abilities, separate_abilities) AS (
SELECT pokedex_number, name, '' AS abilities, abilities||',' AS separate_abilities
FROM imported_pokemon_data
UNION ALL
SELECT pokedex_number, name,
  substr(separate_abilities, 0, instr(separate_abilities, ',')) AS abilities,
  substr(separate_abilities, instr(separate_abilities, ',') +1) AS separate_abilities
FROM split
WHERE separate_abilities != ''
)
INSERT INTO pokemon_abilities(pokedex_number, name, ability)
SELECT pokedex_number, name, abilities FROM split
WHERE abilities != ''
ORDER BY split.name;


SELECT imported_pokemon_data.*, pokemon_abilities.ability 
FROM imported_pokemon_data
LEFT JOIN pokemon_abilities ON imported_pokemon_data.pokedex_number = pokemon_abilities.pokedex_number
ALTER TABLE imported_pokemon_data
DROP COLUMN abilties;


