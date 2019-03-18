#PART 2
#What are the types
SELECT name FROM Pokemon.types;

#What is the name of the pokemon with id 45?
SELECT name FROM Pokemon.pokemons
where id=45 ;

#How many pokemon are there?
SELECT count(id) FROM Pokemon.pokemons;

#How many pokemon are there?
SELECT count(name) FROM Pokemon.types;

#How many pokemon have a secondary type?
SELECT count(*) FROM Pokemon.pokemons
WHERE secondary_type is not null;