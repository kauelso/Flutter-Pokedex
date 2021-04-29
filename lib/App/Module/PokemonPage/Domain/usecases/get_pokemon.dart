import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Module/PokemonPage/Domain/Entities/Pokemon/Pokemon.dart';
import 'package:pokedex/App/Module/PokemonPage/Infra/Repository/pokemon_repository.dart';
part 'GetPokemonUseCaseImpl.g.dart';


abstract class GetPokemonUseCase {
  Future<Pokemon> call(String pokemon);
}

@Injectable()
class GetPokemonUseCaseImpl implements GetPokemonUseCase{
  final PokemonRepository repository;

  GetPokemonUseCaseImpl(this.repository);

  @override
  Future<Pokemon> call(String pokemon) async{
    final result = await repository.getPokemon(pokemon);
    if(result.error != null){
      return null;
    }
    else{
      return result.res;
    }
  }
}