import "package:dio/dio.dart";
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Core/Entities/Pokedex/Pokedex.dart';
import 'package:pokedex/App/Core/Api/Domain/Entities/PxResponse.dart';
import 'package:pokedex/App/Core/Api/Error/api_error.dart';

part 'PokedexRepositoryImpl.g.dart';

abstract class PokedexRepository {
  Future<PxResponse> getPokedex(int gen);
  Future<int> getCountAPI();
}

@Injectable()
class PokedexRepositoryImpl implements PokedexRepository {
  @override
  Future<PxResponse> getPokedex(int gen) async {
    try {
      var response = await Dio().get(
          "https://pokeapi.co/api/v2/generation/" + gen.toString());
      if (response.statusCode == 200) {
        var pokedex = new Pokedex.fromJson(response.data);
        return new PxResponse(pokedex, null);
      }
      else {
        throw ApiError("Não foi possivel encontrar geracao: " + gen.toString());
      }
    }
    catch (e) {
      print(e);
      return new PxResponse(null, e.toString());
    }
  }

  @override
  Future<int> getCountAPI() async {
    try {
      var response = await Dio().get("https://pokeapi.co/api/v2/generation/");
      if (response.statusCode == 200) {
        var num = response.data["count"];
        return num;
      }
      else {
        throw ApiError("Erro ao acessar API:" + response.statusCode.toString());
      }
    }
    catch (e) {
      print(e);
      return null;
    }
  }
}