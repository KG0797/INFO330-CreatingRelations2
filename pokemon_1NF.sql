CREATE TABLE 

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

