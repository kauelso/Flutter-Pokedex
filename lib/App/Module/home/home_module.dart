import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Module/PokemonPage/pokemonPage_module.dart';
import 'package:pokedex/App/Module/home/Presentation/app_widget.dart';
import 'package:pokedex/App/Module/PokemonListPage/pokemonList_module.dart';

// app_module.dart
class HomeModule extends Module {

  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (_,args) =>AppWidget()),
    ModuleRoute("/pokemonlist/:gen", module: PokemonListModule()),
    ModuleRoute("/pokemon/:pk", module: PokemonPageModule())
  ];

}