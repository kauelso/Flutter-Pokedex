// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Pokedex.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$myPokedex on Pokedex, Store {
  final _$pokemonsAtom = Atom(name: 'Pokedex.pokemons');

  @override
  List<String> get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(List<String> value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$setPokedexAsyncAction = AsyncAction('Pokedex.setPokedex');

  @override
  Future<Pokedex> setPokedex(int gen) {
    return _$setPokedexAsyncAction.run(() => super.setPokedex(gen));
  }

  final _$PokedexActionController = ActionController(name: 'Pokedex');

  @override
  void _addPoke(String poke) {
    final _$actionInfo =
        _$PokedexActionController.startAction(name: 'Pokedex._addPoke');
    try {
      return super._addPoke(poke);
    } finally {
      _$PokedexActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons}
    ''';
  }
}
