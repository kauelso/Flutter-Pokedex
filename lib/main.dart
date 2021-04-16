import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/Pokedex.dart';
import 'package:pokedex/Pokemon.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pokedex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
        backgroundColor: Colors.red,
      ),
      body: _genWidget(),
    );
  }

  Widget _genWidget(){
    var rowList = <Widget>[];
    for(int i = 1; i<=8; i= i+2){
      rowList.add(_makeRow(i, i+1));
    }
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: rowList,
    );
  }

  Widget _makeRow(int i,int j){
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
      Expanded(
        child: Container(
          height: 120,
          child: Card(
            child: Center(
              child:ListTile(
              title: Text("Generation " + i.toString()),
              onTap: () => _genPokedex(i),
              ),
            ),
          ),
        )
      ),
          Expanded(
              child: Container(
                height: 120,
                child: Card(
                  child: Center(
                    child:ListTile(
                      title: Text("Generation " + (j).toString()),
                      onTap: () => _genPokedex(j),
                    ),
                  ),
                ),
              )
          ),
    ]
    );
  }

  void _genPokedex(int gen){
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (BuildContext context){
              var pokedex = myPokedex();
              pokedex.setPokedex(gen);
              return Scaffold(
                appBar: AppBar(
                  title: Text("Geração " + gen.toString()),
                  leading: BackButton(color: Colors.white,onPressed: () => Navigator.pop(context)),
                ),
                body: ListView.builder(
                        itemBuilder: (context,i){
                          return Observer(
                              builder: (_){
                                if(i < pokedex.pokemons.length){
                                  return ListTile(
                                    title: Text(pokedex.pokemons[i]),
                                  );
                                }
                                else
                                  return Container();
                              }
                          );
                  },
                ),
              );
            }
        )
    );
  }
}
