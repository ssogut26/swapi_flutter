import 'package:freezed_annotation/freezed_annotation.dart';

part 'starships.freezed.dart';
part 'starships.g.dart';

@freezed
class StarShips with _$StarShips {
  const factory StarShips({
    int? count,
    String? next,
    dynamic previous,
    List<StarShipResults>? results,
  }) = _StarShips;

  factory StarShips.fromJson(Map<String, dynamic> json) => _$StarShipsFromJson(json);
}

@freezed
class StarShipResults with _$StarShipResults {
  const factory StarShipResults({
    String? name,
    String? model,
    String? manufacturer,
    String? cost_in_credits,
    String? length,
    String? max_atmosphering_speed,
    String? crew,
    String? passengers,
    String? cargo_capacity,
    String? consumables,
    String? hyperdrive_rating,
    String? MGLT,
    String? starship_class,
    List<String>? pilots,
    List<String>? films,
    DateTime? created,
    DateTime? edited,
    String? url,
  }) = _StarShipResults;
  factory StarShipResults.fromJson(Map<String, dynamic> json) =>
      _$StarShipResultsFromJson(json);
}
