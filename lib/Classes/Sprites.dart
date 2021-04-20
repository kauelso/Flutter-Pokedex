class Sprites{
  List<String> sprites;

  Sprites(){
    sprites = [];
  }

  void addSprite(String a){
    sprites.add(a);
  }

  factory Sprites.fromJson(dynamic json) {
    var item = Sprites();
    var sprites = json['sprites'];
    item.addSprite(sprites['front_default']);
    item.addSprite(sprites['back_default']);
    return item;
  }
}