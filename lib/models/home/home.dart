// To parse this JSON data, do
//
//     final home = homeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
abstract class Home with _$Home {
  const factory Home({
    String? people,
    String? planets,
    String? films,
    String? species,
    String? vehicles,
    String? starships,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}
