import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Core/Api/Infra/Repository/pokedex_repository.dart';
import 'package:pokedex/App/Core/Entities/Pokedex/Pokedex.dart';
part 'GetPokedexUseCaseImpl.g.dart';

abstract class GetPokedexUseCase{
  Future<Pokedex> call(int gen);
}

@Injectable()
class GetPokedexUseCaseImpl implements GetPokedexUseCase{
  final PokedexRepository repository;

  GetPokedexUseCaseImpl(this.repository);

  @override
  Future<Pokedex> call(int gen) async{
    final result = await repository.getPokedex(gen);
    if(result.error != null){
      return null;
    }
    else{
      return result.res;
    }
  }
}