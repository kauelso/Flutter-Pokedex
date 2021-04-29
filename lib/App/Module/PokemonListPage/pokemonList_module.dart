import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Module/PokemonListPage/Presentation/pokemonListPage.dart';

// app_module.dart
class PokemonListModule extends Module {

  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/:gen", child: (_,args) =>PokemonListPage(args.params['gen'])),
  ];

}