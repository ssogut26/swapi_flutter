// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicles _$$_VehiclesFromJson(Map<String, dynamic> json) => _$_Vehicles(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => VehicleResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VehiclesToJson(_$_Vehicles instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_VehicleResult _$$_VehicleResultFromJson(Map<String, dynamic> json) =>
    _$_VehicleResult(
      name: json['name'] as String?,
      model: json['model'] as String?,
      manufacturer: json['manufacturer'] as String?,
      cost_in_credits: json['cost_in_credits'] as String?,
      length: json['length'] as String?,
      max_atmosphering_speed: json['max_atmosphering_speed'] as String?,
      crew: json['crew'] as String?,
      passengers: json['passengers'] as String?,
      cargo_capacity: json['cargo_capacity'] as String?,
      consumables: json['consumables'] as String?,
      vehicle_class: json['vehicle_class'] as String?,
      pilots:
          (json['pilots'] as List<dynamic>?)?.map((e) => e as String).toList(),
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

Map<String, dynamic> _$$_VehicleResultToJson(_$_VehicleResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'cost_in_credits': instance.cost_in_credits,
      'length': instance.length,
      'max_atmosphering_speed': instance.max_atmosphering_speed,
      'crew': instance.crew,
      'passengers': instance.passengers,
      'cargo_capacity': instance.cargo_capacity,
      'consumables': instance.consumables,
      'vehicle_class': instance.vehicle_class,
      'pilots': instance.pilots,
      'films': instance.films,
      'created': instance.created?.toIso8601String(),
      'edited': instance.edited?.toIso8601String(),
      'url': instance.url,
    };
