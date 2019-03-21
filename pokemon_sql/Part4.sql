#Final Report

SELECT p.name AS PokemonName, t.trainername AS Trainer, pt.pokelevel AS PokeLevel, ptype.name AS PrimaryType, stype.name AS SecondaryType
FROM Pokemon.pokemons p
JOIN Pokemon.pokemon_trainer pt ON p.id = pokemon_id
JOIN Pokemon.trainers t ON pt.trainerID = t.trainerID
JOIN Pokemon.types ptype ON ptype.id = p.primary_type
JOIN Pokemon.types stype ON stype.id = p.secondary_type
ORDER BY pt.pokelevel DESC ;




#Primary type is Steel and Pokelevel 100
SELECT p.name AS Name, pt.pokelevel AS Level, ptype.name AS PrimaryType, stype.name AS Secondary, t.trainername AS Trainer
FROM Pokemon.pokemons p
JOIN Pokemon.pokemon_trainer pt ON p.id = pokemon_id
JOIN Pokemon.trainers t ON pt.trainerID = t.trainerID
JOIN Pokemon.types ptype ON ptype.id = p.primary_type
JOIN Pokemon.types stype ON stype.id = p.secondary_type
WHERE pt.pokelevel = 100 AND ptype.id = 11
ORDER BY p.name;