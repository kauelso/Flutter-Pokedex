import "package:dio/dio.dart";
import 'package:pokedex/Types.dart';
import "Pokemon.dart";
import 'PResponse.dart';

Future<PResponse> getPokemon(String pokemon) async{
  try {
    var response = await Dio().get("https://pokeapi.co/api/v2/pokemon/" + pokemon);
    print("https://pokeapi.co/api/v2/pokemon/" + pokemon);
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