import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';
@JsonSerializable()
class Users {
  String birthYear;
  String created;
  String edited;
  String eyeColor;
  List<String> films;
  String gender;
  String hairColor;
  String height;
  String homeWorld;
  String mass;
  String name;
  String skinColor;
  List<String> species;
  List<String> starShips;
  String url;
  List<String> vehicles;

  Users(this.birthYear, this.created, this.edited, this.eyeColor, this.films,
      this.gender, this.hairColor, this.height, this.homeWorld, this.mass,
      this.name, this.skinColor, this.species, this.starShips, this.url,
      this.vehicles);

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);




}