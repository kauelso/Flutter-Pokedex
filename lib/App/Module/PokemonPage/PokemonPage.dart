// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:pokedex/App/Module/PokemonPage/Domain/Entities/Pokemon/Pokemon.dart';
// import 'file:///D:/Dev/flutter/pokedex/lib/App/Module/PokemonPage/PokemonController.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:pokedex/App/Module/PokemonPage/Domain/usecases/get_pokemon.dart';
// import 'package:pokedex/App/Module/PokemonPage/Infra/Repository/pokemon_repository.dart';
//
// void pokemonPage(BuildContext context,String pk){
//   Navigator.of(context).push(
//     MaterialPageRoute(
//       builder: (BuildContext context){
//         return Scaffold(
//           appBar: AppBar(
//             iconTheme: IconThemeData(color: Colors.black54),
//             title: Text(pk.toUpperCase(),style: TextStyle(color: Colors.black54),),
//             backgroundColor: Colors.white,
//           ),
//           body: Observer(
//            builder: (_){
//              controller.getPokemonFromAPI(pk);
//              if(controller.error == true){
//                return Text("Erro na API");
//              }
//              if(controller.pokemon != null){
//                return Container(
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      CarouselSlider(
//                        options: CarouselOptions(height: 150.0),
//                        items: controller.pokemon.sprites.sprites.map((i) {
//                          return Builder(
//                            builder: (BuildContext context) {
//                              return Container(
//                                  width: MediaQuery.of(context).size.width,
//                                  margin: EdgeInsets.symmetric(horizontal: 2.0),
//                                  child: Image.network(i,scale: 0.3,)
//                              );
//                            },
//                          );
//                        }).toList(),
//                      ),
//                      _buildTypes(controller.pokemon),
//                      _buildStats(controller.pokemon),
//                    ],
//                  ),
//                );
//              }
//              return Text("Carregando...");
//            }
//
//           ),
//         );
//       }
//     )
//   );
// }
//
// Widget _buildTypes(Pokemon pk){
//   var _wList = <Widget>[];
//   pk.types.typesList.forEach((element) {
//     _wList.add(
//         Card(
//           color: Colors.white60,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16.0)
//           ),
//           child: Container(
//               height: 40.0,
//               width: 80,
//               child: Center(child: Text(element)),
//             ),
//         )
//     );
//   });
//   return  Container(
//     padding: EdgeInsets.all(12.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Types",style: TextStyle(fontWeight: FontWeight.bold)),
//           Row(
//             children: _wList,
//           )
//         ],
//       ),
//     );
// }
//
// Widget _buildStats(Pokemon pk){
//   return Container(
//     padding: EdgeInsets.all(12.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text("Stats",style: TextStyle(fontWeight: FontWeight.bold)),
//         Text("HP: " + pk.stats.hp.toString()),
//         Text("Speed: " + pk.stats.speed.toString()),
//         Text("Attack: " + pk.stats.attack.toString()),
//         Text("Defense: " + pk.stats.defense.toString()),
//         Text("Special Attack: " + pk.stats.specialAttack.toString()),
//         Text("Special Defense: " + pk.stats.specialDefense.toString()),
//       ],
//     ),
//   );
// }
