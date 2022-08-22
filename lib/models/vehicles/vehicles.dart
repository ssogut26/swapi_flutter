// To parse this JSON data, do
//
//     final vehicles = vehiclesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicles.freezed.dart';
part 'vehicles.g.dart';

@freezed
class Vehicles with _$Vehicles {
  const factory Vehicles({
    int? count,
    String? next,
    dynamic previous,
    List<VehicleResult>? results,
  }) = _Vehicles;

  factory Vehicles.fromJson(Map<String, dynamic> json) => _$VehiclesFromJson(json);
}

@freezed
class VehicleResult with _$VehicleResult {
  const factory VehicleResult({
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
    String? vehicle_class,
    List<String>? pilots,
    List<String>? films,
    DateTime? created,
    DateTime? edited,
    String? url,
  }) = _VehicleResult;

  factory VehicleResult.fromJson(Map<String, dynamic> json) =>
      _$VehicleResultFromJson(json);
}
