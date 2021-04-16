// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PokedexController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$pokedexController on _pokedexController, Store {
  final _$pokedexAtom = Atom(name: '_pokedexController.pokedex');

  @override
  Pokedex get pokedex {
    _$pokedexAtom.reportRead();
    return super.pokedex;
  }

  @override
  set pokedex(Pokedex value) {
    _$pokedexAtom.reportWrite(value, super.pokedex, () {
      super.pokedex = value;
    });
  }

  final _$buildPokedexAsyncAction =
      AsyncAction('_pokedexController.buildPokedex');

  @override
  Future buildPokedex(int gen) {
    return _$buildPokedexAsyncAction.run(() => super.buildPokedex(gen));
  }

  @override
  String toString() {
    return '''
pokedex: ${pokedex}
    ''';
  }
}
