import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/App/Module/PokemonPage/Presentation/pokemon_page.dart';

// app_module.dart
class PokemonPageModule extends Module {

  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute("/:pk", child: (_,args) =>PokemonPage(args.params['pk'])),
  ];

}