// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users(
    json['birthYear'] as String,
    json['created'] as String,
    json['edited'] as String,
    json['eyeColor'] as String,
    (json['films'] as List)?.map((e) => e as String)?.toList(),
    json['gender'] as String,
    json['hairColor'] as String,
    json['height'] as String,
    json['homeWorld'] as String,
    json['mass'] as String,
    json['name'] as String,
    json['skinColor'] as String,
    (json['species'] as List)?.map((e) => e as String)?.toList(),
    (json['starShips'] as List)?.map((e) => e as String)?.toList(),
    json['url'] as String,
    (json['vehicles'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'birthYear': instance.birthYear,
      'created': instance.created,
      'edited': instance.edited,
      'eyeColor': instance.eyeColor,
      'films': instance.films,
      'gender': instance.gender,
      'hairColor': instance.hairColor,
      'height': instance.height,
      'homeWorld': instance.homeWorld,
      'mass': instance.mass,
      'name': instance.name,
      'skinColor': instance.skinColor,
      'species': instance.species,
      'starShips': instance.starShips,
      'url': instance.url,
      'vehicles': instance.vehicles,
    };
