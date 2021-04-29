//  app_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../Widgets/gen_widget.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pokedex"),
          backgroundColor: Colors.red,
        ),
        body: GenBuilder(),
      ),
    ).modular();
  }
}