// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
mixin _$Home {
  String? get people => throw _privateConstructorUsedError;
  String? get planets => throw _privateConstructorUsedError;
  String? get films => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String? get vehicles => throw _privateConstructorUsedError;
  String? get starships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res>;
  $Res call(
      {String? people,
      String? planets,
      String? films,
      String? species,
      String? vehicles,
      String? starships});
}

/// @nodoc
class _$HomeCopyWithImpl<$Res> implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  final Home _value;
  // ignore: unused_field
  final $Res Function(Home) _then;

  @override
  $Res call({
    Object? people = freezed,
    Object? planets = freezed,
    Object? films = freezed,
    Object? species = freezed,
    Object? vehicles = freezed,
    Object? starships = freezed,
  }) {
    return _then(_value.copyWith(
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as String?,
      planets: planets == freezed
          ? _value.planets
          : planets // ignore: cast_nullable_to_non_nullable
              as String?,
      films: films == freezed
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as String?,
      starships: starships == freezed
          ? _value.starships
          : starships // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? people,
      String? planets,
      String? films,
      String? species,
      String? vehicles,
      String? starships});
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, (v) => _then(v as _$_Home));

  @override
  _$_Home get _value => super._value as _$_Home;

  @override
  $Res call({
    Object? people = freezed,
    Object? planets = freezed,
    Object? films = freezed,
    Object? species = freezed,
    Object? vehicles = freezed,
    Object? starships = freezed,
  }) {
    return _then(_$_Home(
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as String?,
      planets: planets == freezed
          ? _value.planets
          : planets // ignore: cast_nullable_to_non_nullable
              as String?,
      films: films == freezed
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as String?,
      starships: starships == freezed
          ? _value.starships
          : starships // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Home implements _Home {
  const _$_Home(
      {this.people,
      this.planets,
      this.films,
      this.species,
      this.vehicles,
      this.starships});

  factory _$_Home.fromJson(Map<String, dynamic> json) => _$$_HomeFromJson(json);

  @override
  final String? people;
  @override
  final String? planets;
  @override
  final String? films;
  @override
  final String? species;
  @override
  final String? vehicles;
  @override
  final String? starships;

  @override
  String toString() {
    return 'Home(people: $people, planets: $planets, films: $films, species: $species, vehicles: $vehicles, starships: $starships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Home &&
            const DeepCollectionEquality().equals(other.people, people) &&
            const DeepCollectionEquality().equals(other.planets, planets) &&
            const DeepCollectionEquality().equals(other.films, films) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality().equals(other.vehicles, vehicles) &&
            const DeepCollectionEquality().equals(other.starships, starships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(people),
      const DeepCollectionEquality().hash(planets),
      const DeepCollectionEquality().hash(films),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(vehicles),
      const DeepCollectionEquality().hash(starships));

  @JsonKey(ignore: true)
  @override
  _$$_HomeCopyWith<_$_Home> get copyWith =>
      __$$_HomeCopyWithImpl<_$_Home>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeToJson(
      this,
    );
  }
}

abstract class _Home implements Home {
  const factory _Home(
      {final String? people,
      final String? planets,
      final String? films,
      final String? species,
      final String? vehicles,
      final String? starships}) = _$_Home;

  factory _Home.fromJson(Map<String, dynamic> json) = _$_Home.fromJson;

  @override
  String? get people;
  @override
  String? get planets;
  @override
  String? get films;
  @override
  String? get species;
  @override
  String? get vehicles;
  @override
  String? get starships;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCopyWith<_$_Home> get copyWith => throw _privateConstructorUsedError;
}
