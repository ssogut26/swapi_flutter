// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peoples.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Peoples _$$_PeoplesFromJson(Map<String, dynamic> json) => _$_Peoples(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PeopleResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PeoplesToJson(_$_Peoples instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_PeopleResults _$$_PeopleResultsFromJson(Map<String, dynamic> json) =>
    _$_PeopleResults(
      name: json['name'] as String?,
      height: json['height'] as String?,
      mass: json['mass'] as String?,
      hair_color: json['hair_color'] as String?,
      skin_color: json['skin_color'] as String?,
      eye_color: json['eye_color'] as String?,
      birth_year: json['birth_year'] as String?,
      gender: json['gender'] as String?,
      homeworld: json['homeworld'] as String?,
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String).toList(),
      species:
          (json['species'] as List<dynamic>?)?.map((e) => e as String).toList(),
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      starships: (json['starships'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      created: json['created'] as String?,
      edited: json['edited'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PeopleResultsToJson(_$_PeopleResults instance) =>
    <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hair_color,
      'skin_color': instance.skin_color,
      'eye_color': instance.eye_color,
      'birth_year': instance.birth_year,
      'gender': instance.gender,
      'homeworld': instance.homeworld,
      'films': instance.films,
      'species': instance.species,
      'vehicles': instance.vehicles,
      'starships': instance.starships,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
