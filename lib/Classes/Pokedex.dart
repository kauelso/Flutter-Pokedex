import 'package:pokedex/Api/api.dart';
import 'package:pokedex/Classes/Pokemon.dart';

class Pokedex{
  int generation;
  List<String> pokemons;

  Pokedex(){
    generation = 0;
    pokemons = [];
  }

  void setGen(int gen){
    generation = gen;
  }



  void _addPoke(String poke){
    pokemons.add(poke);
  }

  factory Pokedex.fromJson(Map<String,dynamic> json) {
    try{
      var item = new Pokedex();
      item.setGen(json['id']);
      json['pokemon_species'].forEach((elem){
        item._addPoke(elem['name']);
      });
      return item;
    }
    catch(e){
      print(e);
      return null;
    }
  }

}