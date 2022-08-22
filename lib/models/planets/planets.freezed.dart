// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Planets _$PlanetsFromJson(Map<String, dynamic> json) {
  return _Planets.fromJson(json);
}

/// @nodoc
mixin _$Planets {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<PlanetResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanetsCopyWith<Planets> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetsCopyWith<$Res> {
  factory $PlanetsCopyWith(Planets value, $Res Function(Planets) then) =
      _$PlanetsCopyWithImpl<$Res>;
  $Res call(
      {int? count,
      String? next,
      dynamic previous,
      List<PlanetResults>? results});
}

/// @nodoc
class _$PlanetsCopyWithImpl<$Res> implements $PlanetsCopyWith<$Res> {
  _$PlanetsCopyWithImpl(this._value, this._then);

  final Planets _value;
  // ignore: unused_field
  final $Res Function(Planets) _then;

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
              as List<PlanetResults>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlanetsCopyWith<$Res> implements $PlanetsCopyWith<$Res> {
  factory _$$_PlanetsCopyWith(
          _$_Planets value, $Res Function(_$_Planets) then) =
      __$$_PlanetsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? count,
      String? next,
      dynamic previous,
      List<PlanetResults>? results});
}

/// @nodoc
class __$$_PlanetsCopyWithImpl<$Res> extends _$PlanetsCopyWithImpl<$Res>
    implements _$$_PlanetsCopyWith<$Res> {
  __$$_PlanetsCopyWithImpl(_$_Planets _value, $Res Function(_$_Planets) _then)
      : super(_value, (v) => _then(v as _$_Planets));

  @override
  _$_Planets get _value => super._value as _$_Planets;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Planets(
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
              as List<PlanetResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Planets implements _Planets {
  const _$_Planets(
      {this.count,
      this.next,
      this.previous,
      final List<PlanetResults>? results})
      : _results = results;

  factory _$_Planets.fromJson(Map<String, dynamic> json) =>
      _$$_PlanetsFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final dynamic previous;
  final List<PlanetResults>? _results;
  @override
  List<PlanetResults>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Planets(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Planets &&
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
  _$$_PlanetsCopyWith<_$_Planets> get copyWith =>
      __$$_PlanetsCopyWithImpl<_$_Planets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanetsToJson(
      this,
    );
  }
}

abstract class _Planets implements Planets {
  const factory _Planets(
      {final int? count,
      final String? next,
      final dynamic previous,
      final List<PlanetResults>? results}) = _$_Planets;

  factory _Planets.fromJson(Map<String, dynamic> json) = _$_Planets.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  dynamic get previous;
  @override
  List<PlanetResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PlanetsCopyWith<_$_Planets> get copyWith =>
      throw _privateConstructorUsedError;
}

PlanetResults _$PlanetResultsFromJson(Map<String, dynamic> json) {
  return _PlanetResults.fromJson(json);
}

/// @nodoc
mixin _$PlanetResults {
  String? get name => throw _privateConstructorUsedError;
  String? get rotation_period => throw _privateConstructorUsedError;
  String? get orbital_period => throw _privateConstructorUsedError;
  String? get diameter => throw _privateConstructorUsedError;
  String? get climate => throw _privateConstructorUsedError;
  String? get gravity => throw _privateConstructorUsedError;
  String? get terrain => throw _privateConstructorUsedError;
  String? get surface_water => throw _privateConstructorUsedError;
  String? get population => throw _privateConstructorUsedError;
  List<String>? get residents => throw _privateConstructorUsedError;
  List<String>? get films => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get edited => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanetResultsCopyWith<PlanetResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetResultsCopyWith<$Res> {
  factory $PlanetResultsCopyWith(
          PlanetResults value, $Res Function(PlanetResults) then) =
      _$PlanetResultsCopyWithImpl<$Res>;
  $Res call(
      {String? name,
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
      String? url});
}

/// @nodoc
class _$PlanetResultsCopyWithImpl<$Res>
    implements $PlanetResultsCopyWith<$Res> {
  _$PlanetResultsCopyWithImpl(this._value, this._then);

  final PlanetResults _value;
  // ignore: unused_field
  final $Res Function(PlanetResults) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rotation_period = freezed,
    Object? orbital_period = freezed,
    Object? diameter = freezed,
    Object? climate = freezed,
    Object? gravity = freezed,
    Object? terrain = freezed,
    Object? surface_water = freezed,
    Object? population = freezed,
    Object? residents = freezed,
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
      rotation_period: rotation_period == freezed
          ? _value.rotation_period
          : rotation_period // ignore: cast_nullable_to_non_nullable
              as String?,
      orbital_period: orbital_period == freezed
          ? _value.orbital_period
          : orbital_period // ignore: cast_nullable_to_non_nullable
              as String?,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String?,
      climate: climate == freezed
          ? _value.climate
          : climate // ignore: cast_nullable_to_non_nullable
              as String?,
      gravity: gravity == freezed
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as String?,
      terrain: terrain == freezed
          ? _value.terrain
          : terrain // ignore: cast_nullable_to_non_nullable
              as String?,
      surface_water: surface_water == freezed
          ? _value.surface_water
          : surface_water // ignore: cast_nullable_to_non_nullable
              as String?,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as String?,
      residents: residents == freezed
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PlanetResultsCopyWith<$Res>
    implements $PlanetResultsCopyWith<$Res> {
  factory _$$_PlanetResultsCopyWith(
          _$_PlanetResults value, $Res Function(_$_PlanetResults) then) =
      __$$_PlanetResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
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
      String? url});
}

/// @nodoc
class __$$_PlanetResultsCopyWithImpl<$Res>
    extends _$PlanetResultsCopyWithImpl<$Res>
    implements _$$_PlanetResultsCopyWith<$Res> {
  __$$_PlanetResultsCopyWithImpl(
      _$_PlanetResults _value, $Res Function(_$_PlanetResults) _then)
      : super(_value, (v) => _then(v as _$_PlanetResults));

  @override
  _$_PlanetResults get _value => super._value as _$_PlanetResults;

  @override
  $Res call({
    Object? name = freezed,
    Object? rotation_period = freezed,
    Object? orbital_period = freezed,
    Object? diameter = freezed,
    Object? climate = freezed,
    Object? gravity = freezed,
    Object? terrain = freezed,
    Object? surface_water = freezed,
    Object? population = freezed,
    Object? residents = freezed,
    Object? films = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PlanetResults(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rotation_period: rotation_period == freezed
          ? _value.rotation_period
          : rotation_period // ignore: cast_nullable_to_non_nullable
              as String?,
      orbital_period: orbital_period == freezed
          ? _value.orbital_period
          : orbital_period // ignore: cast_nullable_to_non_nullable
              as String?,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String?,
      climate: climate == freezed
          ? _value.climate
          : climate // ignore: cast_nullable_to_non_nullable
              as String?,
      gravity: gravity == freezed
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as String?,
      terrain: terrain == freezed
          ? _value.terrain
          : terrain // ignore: cast_nullable_to_non_nullable
              as String?,
      surface_water: surface_water == freezed
          ? _value.surface_water
          : surface_water // ignore: cast_nullable_to_non_nullable
              as String?,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as String?,
      residents: residents == freezed
          ? _value._residents
          : residents // ignore: cast_nullable_to_non_nullable
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
class _$_PlanetResults implements _PlanetResults {
  const _$_PlanetResults(
      {this.name,
      this.rotation_period,
      this.orbital_period,
      this.diameter,
      this.climate,
      this.gravity,
      this.terrain,
      this.surface_water,
      this.population,
      final List<String>? residents,
      final List<String>? films,
      this.created,
      this.edited,
      this.url})
      : _residents = residents,
        _films = films;

  factory _$_PlanetResults.fromJson(Map<String, dynamic> json) =>
      _$$_PlanetResultsFromJson(json);

  @override
  final String? name;
  @override
  final String? rotation_period;
  @override
  final String? orbital_period;
  @override
  final String? diameter;
  @override
  final String? climate;
  @override
  final String? gravity;
  @override
  final String? terrain;
  @override
  final String? surface_water;
  @override
  final String? population;
  final List<String>? _residents;
  @override
  List<String>? get residents {
    final value = _residents;
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
    return 'PlanetResults(name: $name, rotation_period: $rotation_period, orbital_period: $orbital_period, diameter: $diameter, climate: $climate, gravity: $gravity, terrain: $terrain, surface_water: $surface_water, population: $population, residents: $residents, films: $films, created: $created, edited: $edited, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanetResults &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.rotation_period, rotation_period) &&
            const DeepCollectionEquality()
                .equals(other.orbital_period, orbital_period) &&
            const DeepCollectionEquality().equals(other.diameter, diameter) &&
            const DeepCollectionEquality().equals(other.climate, climate) &&
            const DeepCollectionEquality().equals(other.gravity, gravity) &&
            const DeepCollectionEquality().equals(other.terrain, terrain) &&
            const DeepCollectionEquality()
                .equals(other.surface_water, surface_water) &&
            const DeepCollectionEquality()
                .equals(other.population, population) &&
            const DeepCollectionEquality()
                .equals(other._residents, _residents) &&
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
      const DeepCollectionEquality().hash(rotation_period),
      const DeepCollectionEquality().hash(orbital_period),
      const DeepCollectionEquality().hash(diameter),
      const DeepCollectionEquality().hash(climate),
      const DeepCollectionEquality().hash(gravity),
      const DeepCollectionEquality().hash(terrain),
      const DeepCollectionEquality().hash(surface_water),
      const DeepCollectionEquality().hash(population),
      const DeepCollectionEquality().hash(_residents),
      const DeepCollectionEquality().hash(_films),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(edited),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PlanetResultsCopyWith<_$_PlanetResults> get copyWith =>
      __$$_PlanetResultsCopyWithImpl<_$_PlanetResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanetResultsToJson(
      this,
    );
  }
}

abstract class _PlanetResults implements PlanetResults {
  const factory _PlanetResults(
      {final String? name,
      final String? rotation_period,
      final String? orbital_period,
      final String? diameter,
      final String? climate,
      final String? gravity,
      final String? terrain,
      final String? surface_water,
      final String? population,
      final List<String>? residents,
      final List<String>? films,
      final DateTime? created,
      final DateTime? edited,
      final String? url}) = _$_PlanetResults;

  factory _PlanetResults.fromJson(Map<String, dynamic> json) =
      _$_PlanetResults.fromJson;

  @override
  String? get name;
  @override
  String? get rotation_period;
  @override
  String? get orbital_period;
  @override
  String? get diameter;
  @override
  String? get climate;
  @override
  String? get gravity;
  @override
  String? get terrain;
  @override
  String? get surface_water;
  @override
  String? get population;
  @override
  List<String>? get residents;
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
  _$$_PlanetResultsCopyWith<_$_PlanetResults> get copyWith =>
      throw _privateConstructorUsedError;
}
