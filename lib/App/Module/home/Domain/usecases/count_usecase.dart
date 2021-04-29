import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Core/Api/Infra/Repository/pokedex_repository.dart';
part 'CountUseCaseImpl.g.dart';

abstract class CountUseCase{
  Future<int> call();
}

@Injectable()
class CountUseCaseImpl implements CountUseCase{
  final PokedexRepository repository;

  CountUseCaseImpl(this.repository);

  @override
  Future<int> call() async{
    final result = await repository.getCountAPI();
    if(result == null){
      return null;
    }
    else{
      return result;
    }
  }
}