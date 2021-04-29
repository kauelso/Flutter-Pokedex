import 'package:pokedex/App/Module/PokemonPage/Domain/Entities/Pokemon/Pokemon.dart';


class PResponse {
  Pokemon res;
  String error;


  PResponse(Pokemon response,String err){
    res = response;
    error = err;
  }
}