import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/Classes/Pokedex.dart';
import 'package:pokedex/Controllers/PokedexController.dart';
import 'package:pokedex/Pages/PokemonPage.dart';

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
                            children: _buildRows(context,controller.pokedex),
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

List<Widget> _buildRows(BuildContext context,Pokedex pkd){
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
                      onTap: () => pokemonPage(context, pkd.pokemons[i]),
                      child: Card(
                        child: Container(
                          height: 70,
                          width: 120,
                          child: Center(child: Text(pkd.pokemons[i].toUpperCase()),
                          ),
                        ),
                      ),
                    ),
                  ),

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
              child: Material(
                    child: GestureDetector(
                      onTap: () => pokemonPage(context, pkd.pokemons[i]),
                      child: Card(
                        child: Container(
                          height: 70,
                          width: 120,
                          child: Center(child: Text(pkd.pokemons[i].toUpperCase()),
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
          Expanded(
              child: Material(
                    child: GestureDetector(
                      onTap: () => pokemonPage(context, pkd.pokemons[i+1]),
                      child: Card(
                        child: Container(
                          height: 70,
                          width: 120,
                          child: Center(child: Text(pkd.pokemons[i+1].toUpperCase()),
                          ),
                      ),
                    ),
                  ),
          )
          )
        ],
      ));
      }
  }
  return rowList;
}
