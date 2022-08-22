// To parse this JSON data, do
//
//     final planets = planetsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'planets.freezed.dart';
part 'planets.g.dart';

@freezed
class Planets with _$Planets {
  const factory Planets({
    int? count,
    String? next,
    dynamic previous,
    List<PlanetResults>? results,
  }) = _Planets;

  factory Planets.fromJson(Map<String, dynamic> json) => _$PlanetsFromJson(json);
}

@freezed
class PlanetResults with _$PlanetResults {
  const factory PlanetResults({
    String? name,
    String? rotation_period,
    String? orbital_period,
    String? diameter,
    String? climate,
    String? gravity,
    String? terrain,
    String? surface_water,
    String? population,
    List<String>? residents,
    List<String>? films,
    DateTime? created,
    DateTime? edited,
    String? url,
  }) = _PlanetResults;

  factory PlanetResults.fromJson(Map<String, dynamic> json) =>
      _$PlanetResultsFromJson(json);
}
