import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class GenBuilder extends StatefulWidget {
  @override
  _GenBuilderState createState() => _GenBuilderState();
}

class _GenBuilderState extends State<GenBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
    //var rowList = <Widget>[];
    //var controller = pokedexController();
    // return Observer(
    //     builder: (_){
    //       controller.getCount();
    //       if(controller.error == false){
    //         if(controller.count != null){
    //           for (int i = 1; i <= controller.count; i = i + 2) {
    //             rowList.add(_makeRow(i, i + 1,controller.count));
    //           }
    //           return ListView(
    //             padding: EdgeInsets.all(16.0),
    //             children: rowList,
    //           );
    //         }
    //         else{
    //           return Text("Carregando...");
    //         }
    //       }
    //       else{
    //         return Text("Erro na API.");
    //       }
    //     }
    // );
//   }
// }

// Widget _makeRow(int i, int j,int count) {
//   if(j <= count){
//     return Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Expanded(
//               child: Container(
//                 height: 120,
//                 child: Card(
//                   child: Center(
//                     child: ListTile(
//                       title: Text("Generation " + i.toString()),
//                       onTap: () => pokemonListPage(context,i),
//                     ),
//                   ),
//                 ),
//               )
//           ),
//           Expanded(
//               child: Container(
//                 height: 120,
//                 child: Card(
//                   child: Center(
//                     child: ListTile(
//                       title: Text("Generation " + (j).toString()),
//                       onTap: () => pokemonListPage(context,i+1),
//                     ),
//                   ),
//                 ),
//               )
//           ),
//         ]
//     );
//   }
//   else{
//     Expanded(
//         child: Container(
//           height: 120,
//           child: Card(
//             child: Center(
//               child: ListTile(
//                 title: Text("Generation " + i.toString()),
//                 onTap: () => pokemonListPage(context,i),
//               ),
//             ),
//           ),
//         )
//     );
//   }
//}

