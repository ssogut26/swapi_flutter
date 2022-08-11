// To parse this JSON data, do
//
//     final peoples = peoplesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'peoples.freezed.dart';
part 'peoples.g.dart';

@freezed
class Peoples with _$Peoples {
  const factory Peoples({
    int? count,
    String? next,
    String? previous,
    List<PeopleResults>? results,
  }) = _Peoples;

  factory Peoples.fromJson(Map<String, dynamic> json) => _$PeoplesFromJson(json);
}

@freezed
class PeopleResults with _$PeopleResults {
  const factory PeopleResults({
    String? name,
    String? height,
    String? mass,
    String? hair_color,
    String? skin_color,
    String? eye_color,
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
