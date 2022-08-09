// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'peoples.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Peoples _$PeoplesFromJson(Map<String, dynamic> json) {
  return _Peoples.fromJson(json);
}

/// @nodoc
mixin _$Peoples {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PeopleResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeoplesCopyWith<Peoples> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeoplesCopyWith<$Res> {
  factory $PeoplesCopyWith(Peoples value, $Res Function(Peoples) then) =
      _$PeoplesCopyWithImpl<$Res>;
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PeopleResults>? results});
}

/// @nodoc
class _$PeoplesCopyWithImpl<$Res> implements $PeoplesCopyWith<$Res> {
  _$PeoplesCopyWithImpl(this._value, this._then);

  final Peoples _value;
  // ignore: unused_field
  final $Res Function(Peoples) _then;

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
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PeopleResults>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PeoplesCopyWith<$Res> implements $PeoplesCopyWith<$Res> {
  factory _$$_PeoplesCopyWith(
          _$_Peoples value, $Res Function(_$_Peoples) then) =
      __$$_PeoplesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PeopleResults>? results});
}

/// @nodoc
class __$$_PeoplesCopyWithImpl<$Res> extends _$PeoplesCopyWithImpl<$Res>
    implements _$$_PeoplesCopyWith<$Res> {
  __$$_PeoplesCopyWithImpl(_$_Peoples _value, $Res Function(_$_Peoples) _then)
      : super(_value, (v) => _then(v as _$_Peoples));

  @override
  _$_Peoples get _value => super._value as _$_Peoples;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Peoples(
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
              as String?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PeopleResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Peoples implements _Peoples {
  const _$_Peoples(
      {this.count,
      this.next,
      this.previous,
      final List<PeopleResults>? results})
      : _results = results;

  factory _$_Peoples.fromJson(Map<String, dynamic> json) =>
      _$$_PeoplesFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PeopleResults>? _results;
  @override
  List<PeopleResults>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Peoples(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Peoples &&
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
  _$$_PeoplesCopyWith<_$_Peoples> get copyWith =>
      __$$_PeoplesCopyWithImpl<_$_Peoples>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeoplesToJson(
      this,
    );
  }
}

abstract class _Peoples implements Peoples {
  const factory _Peoples(
      {final int? count,
      final String? next,
      final String? previous,
      final List<PeopleResults>? results}) = _$_Peoples;

  factory _Peoples.fromJson(Map<String, dynamic> json) = _$_Peoples.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PeopleResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PeoplesCopyWith<_$_Peoples> get copyWith =>
      throw _privateConstructorUsedError;
}

PeopleResults _$PeopleResultsFromJson(Map<String, dynamic> json) {
  return _PeopleResults.fromJson(json);
}

/// @nodoc
mixin _$PeopleResults {
  String? get name => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get mass => throw _privateConstructorUsedError;
  String? get hair_color => throw _privateConstructorUsedError;
  String? get skinColor => throw _privateConstructorUsedError;
  String? get eyeColor => throw _privateConstructorUsedError;
  String? get birth_year => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get homeworld => throw _privateConstructorUsedError;
  List<String>? get films => throw _privateConstructorUsedError;
  List<String>? get species => throw _privateConstructorUsedError;
  List<String>? get vehicles => throw _privateConstructorUsedError;
  List<String>? get starships => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  String? get edited => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleResultsCopyWith<PeopleResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleResultsCopyWith<$Res> {
  factory $PeopleResultsCopyWith(
          PeopleResults value, $Res Function(PeopleResults) then) =
      _$PeopleResultsCopyWithImpl<$Res>;
  $Res call(
      {String? name,
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
      String? url});
}

/// @nodoc
class _$PeopleResultsCopyWithImpl<$Res>
    implements $PeopleResultsCopyWith<$Res> {
  _$PeopleResultsCopyWithImpl(this._value, this._then);

  final PeopleResults _value;
  // ignore: unused_field
  final $Res Function(PeopleResults) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? height = freezed,
    Object? mass = freezed,
    Object? hair_color = freezed,
    Object? skinColor = freezed,
    Object? eyeColor = freezed,
    Object? birth_year = freezed,
    Object? gender = freezed,
    Object? homeworld = freezed,
    Object? films = freezed,
    Object? species = freezed,
    Object? vehicles = freezed,
    Object? starships = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      mass: mass == freezed
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as String?,
      hair_color: hair_color == freezed
          ? _value.hair_color
          : hair_color // ignore: cast_nullable_to_non_nullable
              as String?,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColor: eyeColor == freezed
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_year: birth_year == freezed
          ? _value.birth_year
          : birth_year // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      homeworld: homeworld == freezed
          ? _value.homeworld
          : homeworld // ignore: cast_nullable_to_non_nullable
              as String?,
      films: films == freezed
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      starships: starships == freezed
          ? _value.starships
          : starships // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      edited: edited == freezed
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PeopleResultsCopyWith<$Res>
    implements $PeopleResultsCopyWith<$Res> {
  factory _$$_PeopleResultsCopyWith(
          _$_PeopleResults value, $Res Function(_$_PeopleResults) then) =
      __$$_PeopleResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
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
      String? url});
}

/// @nodoc
class __$$_PeopleResultsCopyWithImpl<$Res>
    extends _$PeopleResultsCopyWithImpl<$Res>
    implements _$$_PeopleResultsCopyWith<$Res> {
  __$$_PeopleResultsCopyWithImpl(
      _$_PeopleResults _value, $Res Function(_$_PeopleResults) _then)
      : super(_value, (v) => _then(v as _$_PeopleResults));

  @override
  _$_PeopleResults get _value => super._value as _$_PeopleResults;

  @override
  $Res call({
    Object? name = freezed,
    Object? height = freezed,
    Object? mass = freezed,
    Object? hair_color = freezed,
    Object? skinColor = freezed,
    Object? eyeColor = freezed,
    Object? birth_year = freezed,
    Object? gender = freezed,
    Object? homeworld = freezed,
    Object? films = freezed,
    Object? species = freezed,
    Object? vehicles = freezed,
    Object? starships = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PeopleResults(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      mass: mass == freezed
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as String?,
      hair_color: hair_color == freezed
          ? _value.hair_color
          : hair_color // ignore: cast_nullable_to_non_nullable
              as String?,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColor: eyeColor == freezed
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_year: birth_year == freezed
          ? _value.birth_year
          : birth_year // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      homeworld: homeworld == freezed
          ? _value.homeworld
          : homeworld // ignore: cast_nullable_to_non_nullable
              as String?,
      films: films == freezed
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      species: species == freezed
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vehicles: vehicles == freezed
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      starships: starships == freezed
          ? _value._starships
          : starships // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      edited: edited == freezed
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeopleResults implements _PeopleResults {
  const _$_PeopleResults(
      {this.name,
      this.height,
      this.mass,
      this.hair_color,
      this.skinColor,
      this.eyeColor,
      this.birth_year,
      this.gender,
      this.homeworld,
      final List<String>? films,
      final List<String>? species,
      final List<String>? vehicles,
      final List<String>? starships,
      this.created,
      this.edited,
      this.url})
      : _films = films,
        _species = species,
        _vehicles = vehicles,
        _starships = starships;

  factory _$_PeopleResults.fromJson(Map<String, dynamic> json) =>
      _$$_PeopleResultsFromJson(json);

  @override
  final String? name;
  @override
  final String? height;
  @override
  final String? mass;
  @override
  final String? hair_color;
  @override
  final String? skinColor;
  @override
  final String? eyeColor;
  @override
  final String? birth_year;
  @override
  final String? gender;
  @override
  final String? homeworld;
  final List<String>? _films;
  @override
  List<String>? get films {
    final value = _films;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _species;
  @override
  List<String>? get species {
    final value = _species;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _vehicles;
  @override
  List<String>? get vehicles {
    final value = _vehicles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _starships;
  @override
  List<String>? get starships {
    final value = _starships;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? created;
  @override
  final String? edited;
  @override
  final String? url;

  @override
  String toString() {
    return 'PeopleResults(name: $name, height: $height, mass: $mass, hair_color: $hair_color, skinColor: $skinColor, eyeColor: $eyeColor, birth_year: $birth_year, gender: $gender, homeworld: $homeworld, films: $films, species: $species, vehicles: $vehicles, starships: $starships, created: $created, edited: $edited, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeopleResults &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.mass, mass) &&
            const DeepCollectionEquality()
                .equals(other.hair_color, hair_color) &&
            const DeepCollectionEquality().equals(other.skinColor, skinColor) &&
            const DeepCollectionEquality().equals(other.eyeColor, eyeColor) &&
            const DeepCollectionEquality()
                .equals(other.birth_year, birth_year) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.homeworld, homeworld) &&
            const DeepCollectionEquality().equals(other._films, _films) &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles) &&
            const DeepCollectionEquality()
                .equals(other._starships, _starships) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.edited, edited) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(mass),
      const DeepCollectionEquality().hash(hair_color),
      const DeepCollectionEquality().hash(skinColor),
      const DeepCollectionEquality().hash(eyeColor),
      const DeepCollectionEquality().hash(birth_year),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(homeworld),
      const DeepCollectionEquality().hash(_films),
      const DeepCollectionEquality().hash(_species),
      const DeepCollectionEquality().hash(_vehicles),
      const DeepCollectionEquality().hash(_starships),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(edited),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PeopleResultsCopyWith<_$_PeopleResults> get copyWith =>
      __$$_PeopleResultsCopyWithImpl<_$_PeopleResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeopleResultsToJson(
      this,
    );
  }
}

abstract class _PeopleResults implements PeopleResults {
  const factory _PeopleResults(
      {final String? name,
      final String? height,
      final String? mass,
      final String? hair_color,
      final String? skinColor,
      final String? eyeColor,
      final String? birth_year,
      final String? gender,
      final String? homeworld,
      final List<String>? films,
      final List<String>? species,
      final List<String>? vehicles,
      final List<String>? starships,
      final String? created,
      final String? edited,
      final String? url}) = _$_PeopleResults;

  factory _PeopleResults.fromJson(Map<String, dynamic> json) =
      _$_PeopleResults.fromJson;

  @override
  String? get name;
  @override
  String? get height;
  @override
  String? get mass;
  @override
  String? get hair_color;
  @override
  String? get skinColor;
  @override
  String? get eyeColor;
  @override
  String? get birth_year;
  @override
  String? get gender;
  @override
  String? get homeworld;
  @override
  List<String>? get films;
  @override
  List<String>? get species;
  @override
  List<String>? get vehicles;
  @override
  List<String>? get starships;
  @override
  String? get created;
  @override
  String? get edited;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleResultsCopyWith<_$_PeopleResults> get copyWith =>
      throw _privateConstructorUsedError;
}
