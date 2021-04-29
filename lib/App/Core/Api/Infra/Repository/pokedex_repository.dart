import "package:dio/dio.dart";
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Core/Entities/Pokedex/Pokedex.dart';
import 'package:pokedex/App/Core/Api/Domain/Entities/PxResponse.dart';
import 'package:pokedex/App/Core/Api/Error/api_error.dart';
import 'package:pokedex/App/Core/Errors/errors.dart';
import 'package:dartz/dartz.dart';

part 'pokedex_repository.g.dart';

abstract class PokedexRepository {
  Future<Either<Failure,Pokedex>> getPokedex(int gen);
  Future<Either<Failure,int>> getCountAPI();
}

@Injectable()
class PokedexRepositoryImpl implements PokedexRepository {
  @override
  Future<Either<Failure,Pokedex>> getPokedex(int gen) async {
    try {
      var response = await Dio().get(
          "https://pokeapi.co/api/v2/generation/" + gen.toString());
      if (response.statusCode == 200) {
        var pokedex = new Pokedex.fromJson(response.data);
        return Right(pokedex);
      }
      else {
        throw Exception();
      }
    }
    catch (e) {
      print(e);
      return Left(ApiError("Nao foi possivel acessar a geracao"));
    }
  }

  @override
  Future<Either<Failure,int>> getCountAPI() async {
    try {
      var response = await Dio().get("https://pokeapi.co/api/v2/generation/");
      if (response.statusCode == 200) {
        var num = response.data["count"];
        return Right(num);
      }
      else {
        throw Exception();
      }
    }
    catch (e) {
      print(e);
      return Left(ApiError("Nao foi possivel acessar o numero de geracoes"));
    }
  }
}