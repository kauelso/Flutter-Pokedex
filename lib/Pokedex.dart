import 'package:pokedex/Pokemon.dart';
import 'api.dart';

class Pokedex {
  int generation;
  List<Pokemon> pokemons;

  Pokedex(int generationIn, List<Pokemon> poks){
    generation = generationIn;
    pokemons = poks;
  }

  factory Pokedex.fromJson(Map<String,dynamic> json) {
    var pokeList = <Pokemon>[];
    json['pokemon_species'].forEach((elem){
      pokeList.add(elem['name']);
    });
    var item = new Pokedex(json['id'], pokeList);
    return item;
  }
}