import "package:dio/dio.dart";
import 'package:pokedex/App/Module/PokemonPage/Infra/Entities/PResponse.dart';
import 'package:pokedex/App/Module/PokemonPage/Domain/Entities/Pokemon/Pokemon.dart';
import 'package:pokedex/App/Core/Api/Error/api_error.dart';
import 'package:flutter_modular/flutter_modular.dart';
part 'PokemonRepositoryImpl.g.dart';

abstract class PokemonRepository {
  Future<PResponse> getPokemon(String pokemon);
}

@Injectable()
class PokemonRepositoryImpl implements PokemonRepository {
  Future<PResponse> getPokemon(String pokemon) async {
    try {
      var response = await Dio().get(
          "https://pokeapi.co/api/v2/pokemon/" + pokemon);
      if (response.statusCode == 200) {
        var pokemon = new Pokemon.fromJson(response.data);
        return new PResponse(pokemon, null);
      }
      else {
        throw ApiError("Não foi possivel encontrar pokemon: " + pokemon);
      }
    }
    catch (e) {
      print(e);
      return new PResponse(null, e.toString());
    }
  }
}