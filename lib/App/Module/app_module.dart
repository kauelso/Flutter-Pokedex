import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Module/home/Presentation/app_widget.dart';
import 'home/Presentation/app_widget.dart';

// app_module.dart
class AppModule extends Module {

  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (_,__)=> AppWidget()),
    // ChildRoute("/pokemonList", module: ),
    

  ];

}