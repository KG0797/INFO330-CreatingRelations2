-- create a new table to split apart the abilities column value 
CREATE TABLE if not EXISTS ability_table (
pokedex_number int,
name string,
ability string);

-- using recursion to split the abilities column value for pokemon have multiple ability, then insert into the new ability table.
INSERT INTO ability_table
SELECT pokedex_number,name,TRIM(TRIM(ability,'['),']') AS ability FROM ( WITH split_abilities AS (
    SELECT 
           pokedex_number,name,SUBSTR(abilities, 1, INSTR(abilities, ',') - 1) AS ability_1,
           CASE WHEN INSTR(SUBSTR(abilities, INSTR(abilities, ',') + 1), ',') = 0 THEN
                   SUBSTR(abilities, INSTR(abilities, ',') + 1)
               ELSE
                   SUBSTR(abilities, INSTR(abilities, ',') + 1, INSTR(SUBSTR(abilities, INSTR(abilities, ',') + 1), ',') - 1)
           END AS ability_2,
           CASE
               WHEN INSTR(SUBSTR(abilities, INSTR(abilities, ',') + 1), ',') = 0 THEN
                   NULL
               ELSE
                   SUBSTR(abilities, INSTR(abilities, ',') + 1 + INSTR(SUBSTR(abilities, INSTR(abilities, ',') + 1), ','))
           END AS ability_3
    FROM imported_pokemon_data
)
SELECT  pokedex_number,name,ability_1 AS ability FROM split_abilities
UNION ALL
SELECT  pokedex_number,name,ability_2 AS ability FROM split_abilities WHERE ability_2 IS NOT NULL
UNION ALL
SELECT pokedex_number,name,ability_3 AS ability FROM split_abilities WHERE ability_3 IS NOT NULL)
WHERE ability>'';

