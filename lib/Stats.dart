class Stats {
  int hp;
  int attack;
  int defense;
  int specialAttack;
  int specialDefense;
  int speed;

  Stats(int hpIn, int attackIn, int defenseIn, int specialAttackIn,
      int specialDefenseIn, int speedIn) {
    hp = hpIn;
    defense = defenseIn;
    attack = attackIn;
    specialAttack = specialAttackIn;
    specialDefense = specialDefenseIn;
    speed = speedIn;
  }


  factory Stats.fromJson(Map<String, dynamic> json) {
    var aux = <int>[];
    json['stats'].forEach((elem) {
      aux.add(elem['base_stat']);
    });
    var item = new Stats(aux[0], aux[1], aux[2], aux[3], aux[4], aux[5]);
    return item;
  }
}