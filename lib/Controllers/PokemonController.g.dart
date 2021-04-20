// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PokemonController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$pokemonController on _pokemonController, Store {
  final _$pokemonAtom = Atom(name: '_pokemonController.pokemon');

  @override
  Pokemon get pokemon {
    _$pokemonAtom.reportRead();
    return super.pokemon;
  }

  @override
  set pokemon(Pokemon value) {
    _$pokemonAtom.reportWrite(value, super.pokemon, () {
      super.pokemon = value;
    });
  }

  final _$errorAtom = Atom(name: '_pokemonController.error');

  @override
  bool get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(bool value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$_pokemonControllerActionController =
      ActionController(name: '_pokemonController');

  @override
  void getPokemonFromAPI(String name) {
    final _$actionInfo = _$_pokemonControllerActionController.startAction(
        name: '_pokemonController.getPokemonFromAPI');
    try {
      return super.getPokemonFromAPI(name);
    } finally {
      _$_pokemonControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemon: ${pokemon},
error: ${error}
    ''';
  }
}
