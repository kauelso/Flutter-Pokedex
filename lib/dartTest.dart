import 'package:pokedex/PResponse.dart';
import 'package:pokedex/Pokemon.dart';
import 'api.dart';

void main(){
 test().then((value) {
   if(value == null){
     print("Nenhum pokemon");
   }
   else
     print("ture");
 });
}

Future<Pokemon> test() async{
  PResponse res;
  res = await getPokemon("charizard");
  if(res.error != null){
    return null;
  }else
    {
      return res.res;
    }
}