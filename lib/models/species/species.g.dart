// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Species _$$_SpeciesFromJson(Map<String, dynamic> json) => _$_Species(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SpeciesResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpeciesToJson(_$_Species instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_SpeciesResult _$$_SpeciesResultFromJson(Map<String, dynamic> json) =>
    _$_SpeciesResult(
      name: json['name'] as String?,
      classification: json['classification'] as String?,
      designation: json['designation'] as String?,
      average_height: json['average_height'] as String?,
      skin_colors: json['skin_colors'] as String?,
      hair_colors: json['hair_colors'] as String?,
      eye_colors: json['eye_colors'] as String?,
      average_lifespan: json['average_lifespan'] as String?,
      homeworld: json['homeworld'] as String?,
      language: json['language'] as String?,
      people:
          (json['people'] as List<dynamic>?)?.map((e) => e as String).toList(),
      films:
          (json['films'] as List<dynamic>?)?.map((e) => e as String).toList(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      edited: json['edited'] == null
          ? null
          : DateTime.parse(json['edited'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_SpeciesResultToJson(_$_SpeciesResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'classification': instance.classification,
      'designation': instance.designation,
      'average_height': instance.average_height,
      'skin_colors': instance.skin_colors,
      'hair_colors': instance.hair_colors,
      'eye_colors': instance.eye_colors,
      'average_lifespan': instance.average_lifespan,
      'homeworld': instance.homeworld,
      'language': instance.language,
      'people': instance.people,
      'films': instance.films,
      'created': instance.created?.toIso8601String(),
      'edited': instance.edited?.toIso8601String(),
      'url': instance.url,
    };
