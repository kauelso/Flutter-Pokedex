import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Core/Api/Infra/Repository/pokedex_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:pokedex/App/Core/Errors/errors.dart';
part 'CountUseCaseImpl.g.dart';

abstract class CountUseCase{
  Future<Either<Failure,int>> call();
}

@Injectable()
class CountUseCaseImpl implements CountUseCase{
  final PokedexRepository repository;

  CountUseCaseImpl(this.repository);

  @override
  Future<Either<Failure,int>> call() async{
    return await repository.getCountAPI();
    }
  }
