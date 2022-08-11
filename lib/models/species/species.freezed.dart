// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return _Species.fromJson(json);
}

/// @nodoc
mixin _$Species {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<SpeciesResult>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesCopyWith<Species> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res>;
  $Res call(
      {int? count,
      String? next,
      dynamic previous,
      List<SpeciesResult>? results});
}

/// @nodoc
class _$SpeciesCopyWithImpl<$Res> implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  final Species _value;
  // ignore: unused_field
  final $Res Function(Species) _then;

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
              as List<SpeciesResult>?,
    ));
  }
}

/// @nodoc
abstract class _$$_SpeciesCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$$_SpeciesCopyWith(
          _$_Species value, $Res Function(_$_Species) then) =
      __$$_SpeciesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? count,
      String? next,
      dynamic previous,
      List<SpeciesResult>? results});
}

/// @nodoc
class __$$_SpeciesCopyWithImpl<$Res> extends _$SpeciesCopyWithImpl<$Res>
    implements _$$_SpeciesCopyWith<$Res> {
  __$$_SpeciesCopyWithImpl(_$_Species _value, $Res Function(_$_Species) _then)
      : super(_value, (v) => _then(v as _$_Species));

  @override
  _$_Species get _value => super._value as _$_Species;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Species(
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
              as List<SpeciesResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Species implements _Species {
  const _$_Species(
      {this.count,
      this.next,
      this.previous,
      final List<SpeciesResult>? results})
      : _results = results;

  factory _$_Species.fromJson(Map<String, dynamic> json) =>
      _$$_SpeciesFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final dynamic previous;
  final List<SpeciesResult>? _results;
  @override
  List<SpeciesResult>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Species(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Species &&
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
  _$$_SpeciesCopyWith<_$_Species> get copyWith =>
      __$$_SpeciesCopyWithImpl<_$_Species>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeciesToJson(
      this,
    );
  }
}

abstract class _Species implements Species {
  const factory _Species(
      {final int? count,
      final String? next,
      final dynamic previous,
      final List<SpeciesResult>? results}) = _$_Species;

  factory _Species.fromJson(Map<String, dynamic> json) = _$_Species.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  dynamic get previous;
  @override
  List<SpeciesResult>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_SpeciesCopyWith<_$_Species> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeciesResult _$SpeciesResultFromJson(Map<String, dynamic> json) {
  return _SpeciesResult.fromJson(json);
}

/// @nodoc
mixin _$SpeciesResult {
  String? get name => throw _privateConstructorUsedError;
  String? get classification => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get average_height => throw _privateConstructorUsedError;
  String? get skin_colors => throw _privateConstructorUsedError;
  String? get hair_colors => throw _privateConstructorUsedError;
  String? get eye_colors => throw _privateConstructorUsedError;
  String? get average_lifespan => throw _privateConstructorUsedError;
  String? get homeworld => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get people => throw _privateConstructorUsedError;
  List<String>? get films => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get edited => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesResultCopyWith<SpeciesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesResultCopyWith<$Res> {
  factory $SpeciesResultCopyWith(
          SpeciesResult value, $Res Function(SpeciesResult) then) =
      _$SpeciesResultCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? classification,
      String? designation,
      String? average_height,
      String? skin_colors,
      String? hair_colors,
      String? eye_colors,
      String? average_lifespan,
      String? homeworld,
      String? language,
      List<String>? people,
      List<String>? films,
      DateTime? created,
      DateTime? edited,
      String? url});
}

/// @nodoc
class _$SpeciesResultCopyWithImpl<$Res>
    implements $SpeciesResultCopyWith<$Res> {
  _$SpeciesResultCopyWithImpl(this._value, this._then);

  final SpeciesResult _value;
  // ignore: unused_field
  final $Res Function(SpeciesResult) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? classification = freezed,
    Object? designation = freezed,
    Object? average_height = freezed,
    Object? skin_colors = freezed,
    Object? hair_colors = freezed,
    Object? eye_colors = freezed,
    Object? average_lifespan = freezed,
    Object? homeworld = freezed,
    Object? language = freezed,
    Object? people = freezed,
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
      classification: classification == freezed
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      average_height: average_height == freezed
          ? _value.average_height
          : average_height // ignore: cast_nullable_to_non_nullable
              as String?,
      skin_colors: skin_colors == freezed
          ? _value.skin_colors
          : skin_colors // ignore: cast_nullable_to_non_nullable
              as String?,
      hair_colors: hair_colors == freezed
          ? _value.hair_colors
          : hair_colors // ignore: cast_nullable_to_non_nullable
              as String?,
      eye_colors: eye_colors == freezed
          ? _value.eye_colors
          : eye_colors // ignore: cast_nullable_to_non_nullable
              as String?,
      average_lifespan: average_lifespan == freezed
          ? _value.average_lifespan
          : average_lifespan // ignore: cast_nullable_to_non_nullable
              as String?,
      homeworld: homeworld == freezed
          ? _value.homeworld
          : homeworld // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SpeciesResultCopyWith<$Res>
    implements $SpeciesResultCopyWith<$Res> {
  factory _$$_SpeciesResultCopyWith(
          _$_SpeciesResult value, $Res Function(_$_SpeciesResult) then) =
      __$$_SpeciesResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? classification,
      String? designation,
      String? average_height,
      String? skin_colors,
      String? hair_colors,
      String? eye_colors,
      String? average_lifespan,
      String? homeworld,
      String? language,
      List<String>? people,
      List<String>? films,
      DateTime? created,
      DateTime? edited,
      String? url});
}

/// @nodoc
class __$$_SpeciesResultCopyWithImpl<$Res>
    extends _$SpeciesResultCopyWithImpl<$Res>
    implements _$$_SpeciesResultCopyWith<$Res> {
  __$$_SpeciesResultCopyWithImpl(
      _$_SpeciesResult _value, $Res Function(_$_SpeciesResult) _then)
      : super(_value, (v) => _then(v as _$_SpeciesResult));

  @override
  _$_SpeciesResult get _value => super._value as _$_SpeciesResult;

  @override
  $Res call({
    Object? name = freezed,
    Object? classification = freezed,
    Object? designation = freezed,
    Object? average_height = freezed,
    Object? skin_colors = freezed,
    Object? hair_colors = freezed,
    Object? eye_colors = freezed,
    Object? average_lifespan = freezed,
    Object? homeworld = freezed,
    Object? language = freezed,
    Object? people = freezed,
    Object? films = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_SpeciesResult(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      classification: classification == freezed
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      average_height: average_height == freezed
          ? _value.average_height
          : average_height // ignore: cast_nullable_to_non_nullable
              as String?,
      skin_colors: skin_colors == freezed
          ? _value.skin_colors
          : skin_colors // ignore: cast_nullable_to_non_nullable
              as String?,
      hair_colors: hair_colors == freezed
          ? _value.hair_colors
          : hair_colors // ignore: cast_nullable_to_non_nullable
              as String?,
      eye_colors: eye_colors == freezed
          ? _value.eye_colors
          : eye_colors // ignore: cast_nullable_to_non_nullable
              as String?,
      average_lifespan: average_lifespan == freezed
          ? _value.average_lifespan
          : average_lifespan // ignore: cast_nullable_to_non_nullable
              as String?,
      homeworld: homeworld == freezed
          ? _value.homeworld
          : homeworld // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      people: people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
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
class _$_SpeciesResult implements _SpeciesResult {
  const _$_SpeciesResult(
      {this.name,
      this.classification,
      this.designation,
      this.average_height,
      this.skin_colors,
      this.hair_colors,
      this.eye_colors,
      this.average_lifespan,
      this.homeworld,
      this.language,
      final List<String>? people,
      final List<String>? films,
      this.created,
      this.edited,
      this.url})
      : _people = people,
        _films = films;

  factory _$_SpeciesResult.fromJson(Map<String, dynamic> json) =>
      _$$_SpeciesResultFromJson(json);

  @override
  final String? name;
  @override
  final String? classification;
  @override
  final String? designation;
  @override
  final String? average_height;
  @override
  final String? skin_colors;
  @override
  final String? hair_colors;
  @override
  final String? eye_colors;
  @override
  final String? average_lifespan;
  @override
  final String? homeworld;
  @override
  final String? language;
  final List<String>? _people;
  @override
  List<String>? get people {
    final value = _people;
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
    return 'SpeciesResult(name: $name, classification: $classification, designation: $designation, average_height: $average_height, skin_colors: $skin_colors, hair_colors: $hair_colors, eye_colors: $eye_colors, average_lifespan: $average_lifespan, homeworld: $homeworld, language: $language, people: $people, films: $films, created: $created, edited: $edited, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeciesResult &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.classification, classification) &&
            const DeepCollectionEquality()
                .equals(other.designation, designation) &&
            const DeepCollectionEquality()
                .equals(other.average_height, average_height) &&
            const DeepCollectionEquality()
                .equals(other.skin_colors, skin_colors) &&
            const DeepCollectionEquality()
                .equals(other.hair_colors, hair_colors) &&
            const DeepCollectionEquality()
                .equals(other.eye_colors, eye_colors) &&
            const DeepCollectionEquality()
                .equals(other.average_lifespan, average_lifespan) &&
            const DeepCollectionEquality().equals(other.homeworld, homeworld) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other._people, _people) &&
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
      const DeepCollectionEquality().hash(classification),
      const DeepCollectionEquality().hash(designation),
      const DeepCollectionEquality().hash(average_height),
      const DeepCollectionEquality().hash(skin_colors),
      const DeepCollectionEquality().hash(hair_colors),
      const DeepCollectionEquality().hash(eye_colors),
      const DeepCollectionEquality().hash(average_lifespan),
      const DeepCollectionEquality().hash(homeworld),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(_people),
      const DeepCollectionEquality().hash(_films),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(edited),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_SpeciesResultCopyWith<_$_SpeciesResult> get copyWith =>
      __$$_SpeciesResultCopyWithImpl<_$_SpeciesResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeciesResultToJson(
      this,
    );
  }
}

abstract class _SpeciesResult implements SpeciesResult {
  const factory _SpeciesResult(
      {final String? name,
      final String? classification,
      final String? designation,
      final String? average_height,
      final String? skin_colors,
      final String? hair_colors,
      final String? eye_colors,
      final String? average_lifespan,
      final String? homeworld,
      final String? language,
      final List<String>? people,
      final List<String>? films,
      final DateTime? created,
      final DateTime? edited,
      final String? url}) = _$_SpeciesResult;

  factory _SpeciesResult.fromJson(Map<String, dynamic> json) =
      _$_SpeciesResult.fromJson;

  @override
  String? get name;
  @override
  String? get classification;
  @override
  String? get designation;
  @override
  String? get average_height;
  @override
  String? get skin_colors;
  @override
  String? get hair_colors;
  @override
  String? get eye_colors;
  @override
  String? get average_lifespan;
  @override
  String? get homeworld;
  @override
  String? get language;
  @override
  List<String>? get people;
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
  _$$_SpeciesResultCopyWith<_$_SpeciesResult> get copyWith =>
      throw _privateConstructorUsedError;
}
