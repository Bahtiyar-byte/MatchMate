import 'package:match_mate/datastore/data_hobby.dart';
class Tip {
  int id;
  String name;
  String description;
  String imageUrl;

  String imageAsset()
  {
     return "assets/tips/$imageUrl";
  }
  List<Hobby> hobbies = [];

  Tip({required this.id, required this.name, required this.description, required this.imageUrl});

  bool haveHobby(Hobby hobby)
  {
      return hobbies.contains(hobby);
  }

  Tip.copy(Tip other)
      : id = other.id,
        name = other.name,
        description = other.description,
        imageUrl = other.imageUrl
        //hobbies = List<Hobby>.from(other.hobbies);
  ;

  void addHobby(Hobby hobby)
  {
    hobby.tip = this;
    hobbies.add(hobby);
  }
}