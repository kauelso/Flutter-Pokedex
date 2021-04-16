import 'package:pokedex/Pokedex.dart';


class PxResponse {
  Pokedex res;
  String error;


  PxResponse(Pokedex response,String err){
    res = response;
    error = err;
  }
}