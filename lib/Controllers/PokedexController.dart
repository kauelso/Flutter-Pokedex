import 'package:mobx/mobx.dart';
import 'package:pokedex/Api/Responses/PxResponse.dart';
import 'package:pokedex/Api/api.dart';
import 'package:pokedex/Classes/Pokedex.dart';
part 'PokedexController.g.dart';

class pokedexController = _pokedexController with _$pokedexController;

abstract class _pokedexController with Store{
 @observable
  Pokedex pokedex;
 @observable
  bool error = false;

 @action
 void buildPokedex(int gen) {
   getPokedex(gen).then((value) {
     if(value.error == null){
       pokedex = value.res;
     }
     else{
       error = true;
     }
   }
   );
 }

}