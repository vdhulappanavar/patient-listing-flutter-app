import 'package:meta/meta.dart';

class Cat{
  final int externalId;
  final String name;
  final String description;
  final String avatarURL;
  final String location;
  final int likeCounter;
  final bool adopted;
  final int id;
  final List<String> catAttributes;
  final List<String> pictures;

  Cat({
    @required this.externalId,
    @required this.name,
    @required this.description,
    @required this.avatarURL,
    @required this.location,
    @required this.likeCounter,
    @required this.adopted,
    @required this.id,
    @required this.catAttributes,
    @required this.pictures
  });

  @override
  String toString() {
    return 'cat $externalId id named $name';
  }
}