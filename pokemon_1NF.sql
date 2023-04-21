WITH split (name, abilities, seperate_abilities) AS (
SELECT (name, '' AS abilities, abilities||',' AS seperate_abilities
FROM temp_p
UNION ALL
SELECT name,
  substr(seperate_abilities, 0, instr(seperate_abilities, ',')) AS abilities,
  substr(seperate_abilities, instr(seperate_abilities, ',') +1) AS seperate_abilities
FROM split
WHERE seperate_abilities != ''
)
SELECT name, abilities FROM split
WHERE abilities != ''
ORDER BY name;
