import 'dart:convert';
// Stirng to JSON
import 'package:cat_app/models/cat.dart';

class CatApi {
  static List<Cat> allCatsFromJSON(String jsonData) {
    List<Cat> cats =[];
    json.decode(jsonData)['cats'].forEach((cat) => cats.add(_forMap(cat)));
    return cats;
  }
  static Cat _forMap(Map<String, dynamic> catMap) {
    return new Cat(
      externalId: catMap['id'],
      name: catMap['name'],
      description: catMap['description'],
      avatarURL: catMap['avatarURL'],
      location: catMap['location'],
      likeCounter: catMap['likeCounter'],
      adopted: catMap['adopted'],
      id: catMap['id'],
      catAttributes: new List<String>.from(catMap['catAttributes']),
      pictures: new List<String>.from(catMap['pictures'])
    );
  }
}