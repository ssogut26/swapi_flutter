// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'films.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Films _$$_FilmsFromJson(Map<String, dynamic> json) => _$_Films(
      count: json['count'] as int?,
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => FilmResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FilmsToJson(_$_Films instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_FilmResults _$$_FilmResultsFromJson(Map<String, dynamic> json) =>
    _$_FilmResults(
      title: json['title'] as String?,
      episode_id: json['episode_id'] as int?,
      opening_crawl: json['opening_crawl'] as String?,
      director: json['director'] as String?,
      producer: json['producer'] as String?,
      release_date: json['release_date'] as String?,
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      planets:
          (json['planets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      starships: (json['starships'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      species:
          (json['species'] as List<dynamic>?)?.map((e) => e as String).toList(),
      created: json['created'] as String?,
      edited: json['edited'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_FilmResultsToJson(_$_FilmResults instance) =>
    <String, dynamic>{
      'title': instance.title,
      'episode_id': instance.episode_id,
      'opening_crawl': instance.opening_crawl,
      'director': instance.director,
      'producer': instance.producer,
      'release_date': instance.release_date,
      'characters': instance.characters,
      'planets': instance.planets,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'species': instance.species,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
