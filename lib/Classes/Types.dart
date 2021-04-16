class Types{
  List<String> typesList;

  Types(){
    typesList = [];
  }

  void addType(String type){
    typesList.add(type);
  }

  factory Types.fromJson(Map<String,dynamic> json) {
    var item = Types();
    json['types'].forEach((elem){
      item.addType(elem['type']['name']);
    });
    return item;
}
}