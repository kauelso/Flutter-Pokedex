import 'Types.dart';
import 'Stats.dart';

class Pokemon {
  String name;
  Types types;
  Stats stats;

  Pokemon(String nameIn, Types typesIn,Stats statsIn){
    name = nameIn;
    types = typesIn;
    stats = statsIn;
  }

  factory Pokemon.fromJson(dynamic json) {
    var item = Pokemon(json['name'],Types.fromJson(json),Stats.fromJson(json));
    return item;
  }

  // Map<String,dynamic> toJson() => {
  //   "title": nome,
  //   "description": descricao,
  //   "id": id,
  // };
}