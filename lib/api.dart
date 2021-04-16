import "package:dio/dio.dart";
import 'package:pokedex/Pokedex.dart';
import "Pokemon.dart";
import 'PResponse.dart';
import 'PxResponse.dart';

Future<PResponse> getPokemon(String pokemon) async{
  try {
    var response = await Dio().get("https://pokeapi.co/api/v2/pokemon/" + pokemon);
    if (response.statusCode == 200) {
      var pokemon = new Pokemon.fromJson(response.data);
      return new PResponse(pokemon, null);
    }
    else{
      throw Exception("Erro ao acessar API:"+response.statusCode.toString());
    }
  }
  catch(e){
     print(e);
    return new PResponse(null, e.toString());
  }
}

Future<PxResponse> getPokedex(int gen) async{
  try {
    var response = await Dio().get("https://pokeapi.co/api/v2/generation/" + gen.toString());
    if (response.statusCode == 200) {
      var pokedex = new Pokedex.fromJson(response.data);
      return new PxResponse(pokedex, null);
    }
    else{
      throw Exception("Erro ao acessar API:"+response.statusCode.toString());
    }
  }
  catch(e){
    print(e);
    return new PxResponse(null, e.toString());
  }
}