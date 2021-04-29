import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokemonPage extends StatelessWidget {
  String pk;

  PokemonPage(this.pk);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pokedex"),
          backgroundColor: Colors.red,
        ),
        body: Container(),
      ),
    ).modular();
  }
}