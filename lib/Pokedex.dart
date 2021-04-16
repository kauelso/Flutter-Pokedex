import 'api.dart';
import 'PxResponse.dart';
import 'package:mobx/mobx.dart';
part 'Pokedex.g.dart';

class myPokedex = Pokedex with _$myPokedex;

abstract class Pokedex with Store{
  int generation;
  @observable
  List<String> pokemons;

  Pokedex(){
    generation = 0;
    pokemons = [];
  }

  void setGen(int gen){
    generation = gen;
  }

  @action
  void _addPoke(String poke){
    pokemons.add(poke);
  }

  factory Pokedex.fromJson(Map<String,dynamic> json) {
    try{
      var item = new myPokedex();
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

  @action
  Future<Pokedex> setPokedex(int gen) async{
    PxResponse res;
    res = await getPokedex(gen);
    if(res.error != null){
      return null;
    }else
    {
      return res.res;
    }
  }
}