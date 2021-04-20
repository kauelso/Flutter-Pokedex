import 'package:mobx/mobx.dart';
import 'package:pokedex/Api/api.dart';
import 'package:pokedex/Classes/Pokemon.dart';
part 'PokemonController.g.dart';

class pokemonController = _pokemonController with _$pokemonController;

abstract class _pokemonController with Store{
  @observable
  Pokemon pokemon;
  @observable
  bool error = false;

  @action
  void getPokemonFromAPI(String name){
    getPokemon(name).then((value) {
      if(value.error == null){
        pokemon = value.res;
      }
      else
        error = true;
    });
  }

}