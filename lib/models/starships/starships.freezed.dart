// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starships.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StarShips _$StarShipsFromJson(Map<String, dynamic> json) {
  return _StarShips.fromJson(json);
}

/// @nodoc
mixin _$StarShips {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<StarShipResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarShipsCopyWith<StarShips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarShipsCopyWith<$Res> {
  factory $StarShipsCopyWith(StarShips value, $Res Function(StarShips) then) =
      _$StarShipsCopyWithImpl<$Res>;
  $Res call(
      {int? count,
      String? next,
      dynamic previous,
      List<StarShipResults>? results});
}

/// @nodoc
class _$StarShipsCopyWithImpl<$Res> implements $StarShipsCopyWith<$Res> {
  _$StarShipsCopyWithImpl(this._value, this._then);

  final StarShips _value;
  // ignore: unused_field
  final $Res Function(StarShips) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StarShipResults>?,
    ));
  }
}

/// @nodoc
abstract class _$$_StarShipsCopyWith<$Res> implements $StarShipsCopyWith<$Res> {
  factory _$$_StarShipsCopyWith(
          _$_StarShips value, $Res Function(_$_StarShips) then) =
      __$$_StarShipsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? count,
      String? next,
      dynamic previous,
      List<StarShipResults>? results});
}

/// @nodoc
class __$$_StarShipsCopyWithImpl<$Res> extends _$StarShipsCopyWithImpl<$Res>
    implements _$$_StarShipsCopyWith<$Res> {
  __$$_StarShipsCopyWithImpl(
      _$_StarShips _value, $Res Function(_$_StarShips) _then)
      : super(_value, (v) => _then(v as _$_StarShips));

  @override
  _$_StarShips get _value => super._value as _$_StarShips;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_StarShips(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StarShipResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StarShips implements _StarShips {
  const _$_StarShips(
      {this.count,
      this.next,
      this.previous,
      final List<StarShipResults>? results})
      : _results = results;

  factory _$_StarShips.fromJson(Map<String, dynamic> json) =>
      _$$_StarShipsFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final dynamic previous;
  final List<StarShipResults>? _results;
  @override
  List<StarShipResults>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StarShips(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StarShips &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_StarShipsCopyWith<_$_StarShips> get copyWith =>
      __$$_StarShipsCopyWithImpl<_$_StarShips>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarShipsToJson(
      this,
    );
  }
}

abstract class _StarShips implements StarShips {
  const factory _StarShips(
      {final int? count,
      final String? next,
      final dynamic previous,
      final List<StarShipResults>? results}) = _$_StarShips;

  factory _StarShips.fromJson(Map<String, dynamic> json) =
      _$_StarShips.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  dynamic get previous;
  @override
  List<StarShipResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_StarShipsCopyWith<_$_StarShips> get copyWith =>
      throw _privateConstructorUsedError;
}

StarShipResults _$StarShipResultsFromJson(Map<String, dynamic> json) {
  return _StarShipResults.fromJson(json);
}

/// @nodoc
mixin _$StarShipResults {
  String? get name => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  String? get cost_in_credits => throw _privateConstructorUsedError;
  String? get length => throw _privateConstructorUsedError;
  String? get max_atmosphering_speed => throw _privateConstructorUsedError;
  String? get crew => throw _privateConstructorUsedError;
  String? get passengers => throw _privateConstructorUsedError;
  String? get cargo_capacity => throw _privateConstructorUsedError;
  String? get consumables => throw _privateConstructorUsedError;
  String? get hyperdrive_rating => throw _privateConstructorUsedError;
  String? get MGLT => throw _privateConstructorUsedError;
  String? get starship_class => throw _privateConstructorUsedError;
  List<String>? get pilots => throw _privateConstructorUsedError;
  List<String>? get films => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get edited => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarShipResultsCopyWith<StarShipResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarShipResultsCopyWith<$Res> {
  factory $StarShipResultsCopyWith(
          StarShipResults value, $Res Function(StarShipResults) then) =
      _$StarShipResultsCopyWithImpl<$Res>;
  $Res call(
      {String? name,
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
      String? url});
}

/// @nodoc
class _$StarShipResultsCopyWithImpl<$Res>
    implements $StarShipResultsCopyWith<$Res> {
  _$StarShipResultsCopyWithImpl(this._value, this._then);

  final StarShipResults _value;
  // ignore: unused_field
  final $Res Function(StarShipResults) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? model = freezed,
    Object? manufacturer = freezed,
    Object? cost_in_credits = freezed,
    Object? length = freezed,
    Object? max_atmosphering_speed = freezed,
    Object? crew = freezed,
    Object? passengers = freezed,
    Object? cargo_capacity = freezed,
    Object? consumables = freezed,
    Object? hyperdrive_rating = freezed,
    Object? MGLT = freezed,
    Object? starship_class = freezed,
    Object? pilots = freezed,
    Object? films = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      cost_in_credits: cost_in_credits == freezed
          ? _value.cost_in_credits
          : cost_in_credits // ignore: cast_nullable_to_non_nullable
              as String?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      max_atmosphering_speed: max_atmosphering_speed == freezed
          ? _value.max_atmosphering_speed
          : max_atmosphering_speed // ignore: cast_nullable_to_non_nullable
              as String?,
      crew: crew == freezed
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as String?,
      passengers: passengers == freezed
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as String?,
      cargo_capacity: cargo_capacity == freezed
          ? _value.cargo_capacity
          : cargo_capacity // ignore: cast_nullable_to_non_nullable
              as String?,
      consumables: consumables == freezed
          ? _value.consumables
          : consumables // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperdrive_rating: hyperdrive_rating == freezed
          ? _value.hyperdrive_rating
          : hyperdrive_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      MGLT: MGLT == freezed
          ? _value.MGLT
          : MGLT // ignore: cast_nullable_to_non_nullable
              as String?,
      starship_class: starship_class == freezed
          ? _value.starship_class
          : starship_class // ignore: cast_nullable_to_non_nullable
              as String?,
      pilots: pilots == freezed
          ? _value.pilots
          : pilots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      films: films == freezed
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      edited: edited == freezed
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StarShipResultsCopyWith<$Res>
    implements $StarShipResultsCopyWith<$Res> {
  factory _$$_StarShipResultsCopyWith(
          _$_StarShipResults value, $Res Function(_$_StarShipResults) then) =
      __$$_StarShipResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
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
      String? url});
}

/// @nodoc
class __$$_StarShipResultsCopyWithImpl<$Res>
    extends _$StarShipResultsCopyWithImpl<$Res>
    implements _$$_StarShipResultsCopyWith<$Res> {
  __$$_StarShipResultsCopyWithImpl(
      _$_StarShipResults _value, $Res Function(_$_StarShipResults) _then)
      : super(_value, (v) => _then(v as _$_StarShipResults));

  @override
  _$_StarShipResults get _value => super._value as _$_StarShipResults;

  @override
  $Res call({
    Object? name = freezed,
    Object? model = freezed,
    Object? manufacturer = freezed,
    Object? cost_in_credits = freezed,
    Object? length = freezed,
    Object? max_atmosphering_speed = freezed,
    Object? crew = freezed,
    Object? passengers = freezed,
    Object? cargo_capacity = freezed,
    Object? consumables = freezed,
    Object? hyperdrive_rating = freezed,
    Object? MGLT = freezed,
    Object? starship_class = freezed,
    Object? pilots = freezed,
    Object? films = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_StarShipResults(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      cost_in_credits: cost_in_credits == freezed
          ? _value.cost_in_credits
          : cost_in_credits // ignore: cast_nullable_to_non_nullable
              as String?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      max_atmosphering_speed: max_atmosphering_speed == freezed
          ? _value.max_atmosphering_speed
          : max_atmosphering_speed // ignore: cast_nullable_to_non_nullable
              as String?,
      crew: crew == freezed
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as String?,
      passengers: passengers == freezed
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as String?,
      cargo_capacity: cargo_capacity == freezed
          ? _value.cargo_capacity
          : cargo_capacity // ignore: cast_nullable_to_non_nullable
              as String?,
      consumables: consumables == freezed
          ? _value.consumables
          : consumables // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperdrive_rating: hyperdrive_rating == freezed
          ? _value.hyperdrive_rating
          : hyperdrive_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      MGLT: MGLT == freezed
          ? _value.MGLT
          : MGLT // ignore: cast_nullable_to_non_nullable
              as String?,
      starship_class: starship_class == freezed
          ? _value.starship_class
          : starship_class // ignore: cast_nullable_to_non_nullable
              as String?,
      pilots: pilots == freezed
          ? _value._pilots
          : pilots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      films: films == freezed
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      edited: edited == freezed
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StarShipResults implements _StarShipResults {
  const _$_StarShipResults(
      {this.name,
      this.model,
      this.manufacturer,
      this.cost_in_credits,
      this.length,
      this.max_atmosphering_speed,
      this.crew,
      this.passengers,
      this.cargo_capacity,
      this.consumables,
      this.hyperdrive_rating,
      this.MGLT,
      this.starship_class,
      final List<String>? pilots,
      final List<String>? films,
      this.created,
      this.edited,
      this.url})
      : _pilots = pilots,
        _films = films;

  factory _$_StarShipResults.fromJson(Map<String, dynamic> json) =>
      _$$_StarShipResultsFromJson(json);

  @override
  final String? name;
  @override
  final String? model;
  @override
  final String? manufacturer;
  @override
  final String? cost_in_credits;
  @override
  final String? length;
  @override
  final String? max_atmosphering_speed;
  @override
  final String? crew;
  @override
  final String? passengers;
  @override
  final String? cargo_capacity;
  @override
  final String? consumables;
  @override
  final String? hyperdrive_rating;
  @override
  final String? MGLT;
  @override
  final String? starship_class;
  final List<String>? _pilots;
  @override
  List<String>? get pilots {
    final value = _pilots;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _films;
  @override
  List<String>? get films {
    final value = _films;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? created;
  @override
  final DateTime? edited;
  @override
  final String? url;

  @override
  String toString() {
    return 'StarShipResults(name: $name, model: $model, manufacturer: $manufacturer, cost_in_credits: $cost_in_credits, length: $length, max_atmosphering_speed: $max_atmosphering_speed, crew: $crew, passengers: $passengers, cargo_capacity: $cargo_capacity, consumables: $consumables, hyperdrive_rating: $hyperdrive_rating, MGLT: $MGLT, starship_class: $starship_class, pilots: $pilots, films: $films, created: $created, edited: $edited, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StarShipResults &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality()
                .equals(other.manufacturer, manufacturer) &&
            const DeepCollectionEquality()
                .equals(other.cost_in_credits, cost_in_credits) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality()
                .equals(other.max_atmosphering_speed, max_atmosphering_speed) &&
            const DeepCollectionEquality().equals(other.crew, crew) &&
            const DeepCollectionEquality()
                .equals(other.passengers, passengers) &&
            const DeepCollectionEquality()
                .equals(other.cargo_capacity, cargo_capacity) &&
            const DeepCollectionEquality()
                .equals(other.consumables, consumables) &&
            const DeepCollectionEquality()
                .equals(other.hyperdrive_rating, hyperdrive_rating) &&
            const DeepCollectionEquality().equals(other.MGLT, MGLT) &&
            const DeepCollectionEquality()
                .equals(other.starship_class, starship_class) &&
            const DeepCollectionEquality().equals(other._pilots, _pilots) &&
            const DeepCollectionEquality().equals(other._films, _films) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.edited, edited) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(manufacturer),
      const DeepCollectionEquality().hash(cost_in_credits),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(max_atmosphering_speed),
      const DeepCollectionEquality().hash(crew),
      const DeepCollectionEquality().hash(passengers),
      const DeepCollectionEquality().hash(cargo_capacity),
      const DeepCollectionEquality().hash(consumables),
      const DeepCollectionEquality().hash(hyperdrive_rating),
      const DeepCollectionEquality().hash(MGLT),
      const DeepCollectionEquality().hash(starship_class),
      const DeepCollectionEquality().hash(_pilots),
      const DeepCollectionEquality().hash(_films),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(edited),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_StarShipResultsCopyWith<_$_StarShipResults> get copyWith =>
      __$$_StarShipResultsCopyWithImpl<_$_StarShipResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarShipResultsToJson(
      this,
    );
  }
}

abstract class _StarShipResults implements StarShipResults {
  const factory _StarShipResults(
      {final String? name,
      final String? model,
      final String? manufacturer,
      final String? cost_in_credits,
      final String? length,
      final String? max_atmosphering_speed,
      final String? crew,
      final String? passengers,
      final String? cargo_capacity,
      final String? consumables,
      final String? hyperdrive_rating,
      final String? MGLT,
      final String? starship_class,
      final List<String>? pilots,
      final List<String>? films,
      final DateTime? created,
      final DateTime? edited,
      final String? url}) = _$_StarShipResults;

  factory _StarShipResults.fromJson(Map<String, dynamic> json) =
      _$_StarShipResults.fromJson;

  @override
  String? get name;
  @override
  String? get model;
  @override
  String? get manufacturer;
  @override
  String? get cost_in_credits;
  @override
  String? get length;
  @override
  String? get max_atmosphering_speed;
  @override
  String? get crew;
  @override
  String? get passengers;
  @override
  String? get cargo_capacity;
  @override
  String? get consumables;
  @override
  String? get hyperdrive_rating;
  @override
  String? get MGLT;
  @override
  String? get starship_class;
  @override
  List<String>? get pilots;
  @override
  List<String>? get films;
  @override
  DateTime? get created;
  @override
  DateTime? get edited;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_StarShipResultsCopyWith<_$_StarShipResults> get copyWith =>
      throw _privateConstructorUsedError;
}
