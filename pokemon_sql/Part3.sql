#PART3
#What is each pokemon's primary type?
SELECT p.name, t.name
FROM pokemon.types t,
     pokemon.pokemons p
WHERE primary_type = t.id;

#What is Rufflet's secondary type?
SELECT p.name, t.NAME
FROM pokemon.types t
JOIN pokemon.pokemons p ON primary_type = t.id
WHERE p.name = 'Rufflet';

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name
FROM Pokemon.pokemon_trainer pt
JOIN Pokemon.pokemons p ON p.id = pt.pokemon_id
JOIN Pokemon.trainers t ON t.trainerID = pt.trainerID
WHERE t.trainerID = 303;

#How many pokemon have a secondary type Poison
SELECT t.name , count(t.name) AS NumOfPokemon
FROM Pokemon.types t
JOIN Pokemon.pokemons p ON primary_type = t.id
WHERE t.name = 'Poison';

#How many pokemon at level 100 does each trainer with at least one level 100
#pokemone have? (Hint: your query should not display a trainer
SELECT trainerID, count(*) AS Lvl100Pokemon
FROM Pokemon.pokemon_trainer pt
WHERE pt.pokelevel = 100
GROUP BY trainerID;

#How many pokemon only belong to one trainer and no other?
SELECT count(pokemon_id) AS NumOfPokemon
FROM (
     SELECT pt.pokemon_id
     FROM Pokemon.pokemon_trainer pt
     GROUP BY pt.pokemon_id
     HAVING count(*) = 1 ) AS pokemon;







