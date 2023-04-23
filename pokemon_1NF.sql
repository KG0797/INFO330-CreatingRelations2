CREATE TABLE pokemon_abilities(
name VARCHAR(255),
ability VARCHAR(255),
FOREIGN KEY (name) REFERENCES temp_p(name))

INSERT INTO pokemon_abilities (name, ability)
SELECT name, TRIM(SUBSTR(abilities, start, IFNULL(NULLIF(INSTR(abilities, ', ', start), 0), LENGTH(abilities) + 1) - start)) AS ability
FROM (
  SELECT name, REPLACE(abilities, '[', '') AS abilities, 1 AS start
  FROM imported_pokemon_data
) AS t
WHERE abilities NOT LIKE '%]'
UNION ALL
SELECT name, TRIM(REPLACE(SUBSTR(abilities, INSTR(abilities, ', ') + 1), ']', '')) AS ability
FROM imported_pokemon_data
WHERE abilities LIKE '%]'
ORDER BY name, ability;
ALTER TABLE temp_p
DROP COLUMN abilties;




WITH split (name, abilities, separate_abilities) AS (
SELECT name, '' AS abilities, abilities||',' AS separate_abilities
FROM temp_p
UNION ALL
SELECT name,
  substr(separate_abilities, 0, instr(separate_abilities, ',')) AS abilities,
  substr(separate_abilities, instr(separate_abilities, ',') +1) AS separate_abilities
FROM split
WHERE separate_abilities != ''
)
SELECT name, abilities FROM split
WHERE abilities != ''
ORDER BY name;

