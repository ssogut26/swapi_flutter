// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Planets _$$_PlanetsFromJson(Map<String, dynamic> json) => _$_Planets(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PlanetResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlanetsToJson(_$_Planets instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_PlanetResults _$$_PlanetResultsFromJson(Map<String, dynamic> json) =>
    _$_PlanetResults(
      name: json['name'] as String?,
      rotation_period: json['rotation_period'] as String?,
      orbital_period: json['orbital_period'] as String?,
      diameter: json['diameter'] as String?,
      climate: json['climate'] as String?,
      gravity: json['gravity'] as String?,
      terrain: json['terrain'] as String?,
      surface_water: json['surface_water'] as String?,
      population: json['population'] as String?,
      residents: (json['residents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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

Map<String, dynamic> _$$_PlanetResultsToJson(_$_PlanetResults instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rotation_period': instance.rotation_period,
      'orbital_period': instance.orbital_period,
      'diameter': instance.diameter,
      'climate': instance.climate,
      'gravity': instance.gravity,
      'terrain': instance.terrain,
      'surface_water': instance.surface_water,
      'population': instance.population,
      'residents': instance.residents,
      'films': instance.films,
      'created': instance.created?.toIso8601String(),
      'edited': instance.edited?.toIso8601String(),
      'url': instance.url,
    };
