// To parse this JSON data, do
//
//     final films = filmsFromJson(jsonString),

import 'package:freezed_annotation/freezed_annotation.dart';

part 'films.freezed.dart';
part 'films.g.dart';

@freezed
class Films with _$Films {
  const factory Films({
    int? count,
    dynamic next,
    dynamic previous,
    List<FilmResults>? results,
  }) = _Films;

  factory Films.fromJson(Map<String, dynamic> json) => _$FilmsFromJson(json);
}

@freezed
class FilmResults with _$FilmResults {
  const factory FilmResults({
    String? title,
    int? episode_id,
    String? opening_crawl,
    String? director,
    String? producer,
    String? release_date,
    List<String>? characters,
    List<String>? planets,
    List<String>? starships,
    List<String>? vehicles,
    List<String>? species,
    String? created,
    String? edited,
    String? url,
  }) = _FilmResults;

  factory FilmResults.fromJson(Map<String, dynamic> json) => _$FilmResultsFromJson(json);
}
