// To parse this JSON data, do
//
//     final species = speciesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@freezed
class Species with _$Species {
  const factory Species({
    int? count,
    String? next,
    dynamic previous,
    List<SpeciesResult>? results,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) => _$SpeciesFromJson(json);
}

@freezed
class SpeciesResult with _$SpeciesResult {
  const factory SpeciesResult({
    String? name,
    String? classification,
    String? designation,
    String? average_height,
    String? skin_colors,
    String? hair_colors,
    String? eye_colors,
    String? average_lifespan,
    String? homeworld,
    String? language,
    List<String>? people,
    List<String>? films,
    DateTime? created,
    DateTime? edited,
    String? url,
  }) = _SpeciesResult;

  factory SpeciesResult.fromJson(Map<String, dynamic> json) =>
      _$SpeciesResultFromJson(json);
}
