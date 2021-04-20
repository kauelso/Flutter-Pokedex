import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/Classes/Pokedex.dart';
import 'package:pokedex/Controllers/PokedexController.dart';

void pokemonListPage(BuildContext context,int gen){
  var controller = pokedexController();
  Navigator.of(context).push(
    MaterialPageRoute(
        builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text("Generation "+ gen.toString()),
              backgroundColor: Colors.red,
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Observer(
                  builder: (_){
                    controller.buildPokedex(gen);
                    if(controller.error == true){
                      return Text("Erro na API");
                    }
                    if(controller.pokedex != null){
                        return Column(
                          children: _buildRows(controller.pokedex),
                        );
                    }
                    return Text("Carregando...");
                  },
                ),
              ),
            ),
          );
        })
  );
}

List<Widget> _buildRows(Pokedex pkd){
  final image = Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png");
  var rowList = <Widget>[];
  for(int i = 0; i < pkd.pokemons.length;i = i+2){
    if(i+1 == pkd.pokemons.length){
      rowList.add(Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Material(
                    child: GestureDetector(
                      onTap: () => print("Clickou"),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: image,
                        ),
                      ),
                    ),
                  ),
                  Text(pkd.pokemons[i])
                ],
              )
          )
        ],
      ));
    }
    else{
      rowList.add(Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Material(
                    child: GestureDetector(
                      onTap: () => print("Clickou"),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: image,
                        ),
                      ),
                    ),
                  ),
                  Text(pkd.pokemons[i])
                ],
              )
          ),
          Expanded(
              child: Column(
                children: [
                  Material(
                    child: GestureDetector(
                      onTap: () => print("Clickou"),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: image,
                        ),
                      ),
                    ),
                  ),
                  Text(pkd.pokemons[i+1])
                ],
              )
          )
        ],
      ));
      }
  }
  return rowList;
}
