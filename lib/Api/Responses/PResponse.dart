import 'package:pokedex/Classes/Pokemon.dart';


class PResponse {
  Pokemon res;
  String error;


  PResponse(Pokemon response,String err){
    res = response;
    error = err;
  }
}