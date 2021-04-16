import 'package:mobx/mobx.dart';
import 'package:pokedex/Api/Responses/PxResponse.dart';
import 'package:pokedex/Api/api.dart';
import 'package:pokedex/Classes/Pokedex.dart';
part 'PokedexController.g.dart';

class pokedexController = _pokedexController with _$pokedexController;

abstract class _pokedexController with Store{
 @observable
  Pokedex pokedex;

 @action
 void buildPokedex(int gen) async{
   PxResponse response = await getPokedex(gen);
   if(response.error == null){
     pokedex = response.res;
   }
 }
}