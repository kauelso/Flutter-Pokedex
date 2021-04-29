import "package:dio/dio.dart";
import 'package:dartz/dartz.dart';
import 'package:pokedex/App/Core/Errors/errors.dart';
import 'package:pokedex/App/Module/PokemonPage/Domain/Entities/Pokemon/Pokemon.dart';
import 'package:pokedex/App/Core/Api/Error/api_error.dart';
import 'package:flutter_modular/flutter_modular.dart';
part 'PokemonRepositoryImpl.g.dart';

abstract class PokemonRepository {
  Future<Either<Failure,Pokemon>> getPokemon(String pokemon);
}

@Injectable()
class PokemonRepositoryImpl implements PokemonRepository {
  Future<Either<Failure,Pokemon>> getPokemon(String pokemon) async {
    try {
      var response = await Dio().get(
          "https://pokeapi.co/api/v2/pokemon/" + pokemon);
      if (response.statusCode == 200) {
        var pokemonRes = new Pokemon.fromJson(response.data);
        return Right(pokemonRes);
      }
      else {
        throw Exception();
      }
    }
    catch (e) {
      print(e);
      return Left(ApiError("Erro ao acessar pokemon "+ pokemon));
    }
  }
}