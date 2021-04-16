import 'package:pokedex/Classes/Pokedex.dart';


class PxResponse {
  Pokedex res;
  String error;


  PxResponse(Pokedex response,String err){
    res = response;
    error = err;
  }
}