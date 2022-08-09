// To parse this JSON data, do
//
//     final peoples = peoplesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'peoples.freezed.dart';
part 'peoples.g.dart';

@freezed
abstract class Peoples with _$Peoples {
  const factory Peoples({
    int? count,
    String? next,
    String? previous,
    List<PeopleResults>? results,
  }) = _Peoples;

  factory Peoples.fromJson(Map<String, dynamic> json) => _$PeoplesFromJson(json);
}

@freezed
abstract class PeopleResults with _$PeopleResults {
  const factory PeopleResults({
    String? name,
    String? height,
    String? mass,
    String? hair_color,
    String? skinColor,
    String? eyeColor,
    String? birth_year,
    String? gender,
    String? homeworld,
    List<String>? films,
    List<String>? species,
    List<String>? vehicles,
    List<String>? starships,
    String? created,
    String? edited,
    String? url,
  }) = _PeopleResults;

  factory PeopleResults.fromJson(Map<String, dynamic> json) =>
      _$PeopleResultsFromJson(json);
}
