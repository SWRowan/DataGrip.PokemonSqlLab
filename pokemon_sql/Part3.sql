#PART3
#What is each pokemon's primary type?
SELECT types.name
FROM pokemon.types,
     pokemon.pokemons
where primary_type = types.id;

