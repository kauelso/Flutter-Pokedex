import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Core/Api/Infra/Repository/pokedex_repository.dart';
import 'package:pokedex/App/Core/Entities/Pokedex/Pokedex.dart';
import 'package:dartz/dartz.dart';
import 'package:pokedex/App/Core/Errors/errors.dart';
part 'GetPokedexUseCaseImpl.g.dart';

abstract class GetPokedexUseCase{
  Future<Either<Failure,Pokedex>> call(int gen);
}

@Injectable()
class GetPokedexUseCaseImpl implements GetPokedexUseCase{
  final PokedexRepository repository;

  GetPokedexUseCaseImpl(this.repository);

  @override
  Future<Either<Failure,Pokedex>> call(int gen) async{
    return await repository.getPokedex(gen);
  }
}