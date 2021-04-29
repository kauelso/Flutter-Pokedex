import 'package:pokedex/App/Core/Entities/Pokedex/Pokedex.dart';


class PxResponse {
  Pokedex res;
  String error;


  PxResponse(Pokedex response,String err){
    res = response;
    error = err;
  }
}