// import 'package:mobx/mobx.dart';
// import 'package:pokedex/App/Core/Api/Infra/Repository/pokedex_repository.dart';
// import 'package:pokedex/App/Module/Pokedex/Pokedex.dart';
// part 'PokedexController.g.dart';
//
// class pokedexController = _pokedexController with _$pokedexController;
//
// abstract class _pokedexController with Store{
//  @observable
//   Pokedex pokedex;
//  @observable
//   bool error = false;
//  @observable
//  int count;
//
//  @action
//  void buildPokedex(int gen) {
//    getPokedex(gen).then((value) {
//      if(value.error == null){
//        pokedex = value.res;
//      }
//      else{
//        error = true;
//      }
//    }
//    );
//  }
//
//  @action
//  void getCount(){
//    getCountAPI().then((value){
//      if(value == null){
//        error = true;
//      }
//      else
//        {
//          count = value;
//        }
//    });
//  }
//
// }