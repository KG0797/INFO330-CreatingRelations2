CREATE TABLE pokemon_abilities(
pokedex_number INT PRIMARY KEY,
name VARCHAR(255),
ability VARCHAR(255),
FOREIGN KEY (name) REFERENCES temp_p(name))

ALTER TABLE imported_pokemon_data
DROP COLUMN abilties;




WITH RECURSIVE split (name, abilities, separate_abilities) AS (
SELECT name, '' AS abilities, abilities||',' AS separate_abilities
FROM imported_pokemon_data
UNION ALL
SELECT name,
  substr(separate_abilities, 0, instr(separate_abilities, ',')) AS abilities,
  substr(separate_abilities, instr(separate_abilities, ',') +1) AS separate_abilities
FROM split
WHERE separate_abilities != ''
)
INSERT INTO pokemon_abilities(name, ability)
SELECT name, TRIM(abilities) FROM split
WHERE abilities != '';

