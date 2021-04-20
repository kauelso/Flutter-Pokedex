import 'Sprites.dart';
import 'Types.dart';
import 'Stats.dart';

class Pokemon {
  String name;
  Types types;
  Stats stats;
  Sprites sprites;

  Pokemon(String nameIn, Types typesIn,Stats statsIn,Sprites spritesIn){
    name = nameIn;
    types = typesIn;
    stats = statsIn;
    sprites = spritesIn;
  }

  factory Pokemon.fromJson(dynamic json) {
    var item = Pokemon(json['name'],Types.fromJson(json),Stats.fromJson(json),Sprites.fromJson(json));
    return item;
  }

  // Map<String,dynamic> toJson() => {
  //   "title": nome,
  //   "description": descricao,
  //   "id": id,
  // };
}