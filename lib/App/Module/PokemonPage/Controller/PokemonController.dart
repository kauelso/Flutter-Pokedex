// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:mobx/mobx.dart';
// import 'package:pokedex/App/Module/PokemonPage/Domain/Entities/Pokemon/Pokemon.dart';
// import 'package:pokedex/App/Module/PokemonPage/Domain/usecases/get_pokemon.dart';
// part 'PokemonController.g.dart';
//
// @Injectable()
// class pokemonController = _pokemonController with _$pokemonController;
//
// abstract class _pokemonController with Store{
//   final GetPokemonUseCase useCase;
//   @observable
//   Pokemon pokemon;
//   @observable
//   bool error = false;
//
//   _pokemonController(this.useCase);
//
//   @action
//   void getPokemonFromAPI(String name){
//     final result = useCase.call(name).then((result){
//       if(result == null){
//         error = true;
//       }
//       else{
//         pokemon = result;
//       }
//     });
//
//   }
//
// }