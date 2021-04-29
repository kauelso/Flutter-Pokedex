import 'package:flutter_modular/flutter_modular.dart';
import 'package:dartz/dartz.dart';
import 'package:pokedex/App/Core/Errors/errors.dart';
import 'package:pokedex/App/Module/PokemonPage/Domain/Entities/Pokemon/Pokemon.dart';
import 'package:pokedex/App/Module/PokemonPage/Infra/Repository/pokemon_repository.dart';
part 'GetPokemonUseCaseImpl.g.dart';


abstract class GetPokemonUseCase {
  Future<Either<Failure,Pokemon>> call(String pokemon);
}

@Injectable()
class GetPokemonUseCaseImpl implements GetPokemonUseCase{
  final PokemonRepository repository;

  GetPokemonUseCaseImpl(this.repository);

  @override
  Future<Either<Failure,Pokemon>> call(String pokemon) async{
    return await repository.getPokemon(pokemon);
  }
}