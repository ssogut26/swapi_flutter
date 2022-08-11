// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'films.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Films _$FilmsFromJson(Map<String, dynamic> json) {
  return _Films.fromJson(json);
}

/// @nodoc
mixin _$Films {
  int? get count => throw _privateConstructorUsedError;
  dynamic get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<FilmResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmsCopyWith<Films> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmsCopyWith<$Res> {
  factory $FilmsCopyWith(Films value, $Res Function(Films) then) =
      _$FilmsCopyWithImpl<$Res>;
  $Res call(
      {int? count, dynamic next, dynamic previous, List<FilmResults>? results});
}

/// @nodoc
class _$FilmsCopyWithImpl<$Res> implements $FilmsCopyWith<$Res> {
  _$FilmsCopyWithImpl(this._value, this._then);

  final Films _value;
  // ignore: unused_field
  final $Res Function(Films) _then;

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
              as dynamic,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FilmResults>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilmsCopyWith<$Res> implements $FilmsCopyWith<$Res> {
  factory _$$_FilmsCopyWith(_$_Films value, $Res Function(_$_Films) then) =
      __$$_FilmsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? count, dynamic next, dynamic previous, List<FilmResults>? results});
}

/// @nodoc
class __$$_FilmsCopyWithImpl<$Res> extends _$FilmsCopyWithImpl<$Res>
    implements _$$_FilmsCopyWith<$Res> {
  __$$_FilmsCopyWithImpl(_$_Films _value, $Res Function(_$_Films) _then)
      : super(_value, (v) => _then(v as _$_Films));

  @override
  _$_Films get _value => super._value as _$_Films;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Films(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FilmResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Films implements _Films {
  const _$_Films(
      {this.count, this.next, this.previous, final List<FilmResults>? results})
      : _results = results;

  factory _$_Films.fromJson(Map<String, dynamic> json) =>
      _$$_FilmsFromJson(json);

  @override
  final int? count;
  @override
  final dynamic next;
  @override
  final dynamic previous;
  final List<FilmResults>? _results;
  @override
  List<FilmResults>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Films(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Films &&
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
  _$$_FilmsCopyWith<_$_Films> get copyWith =>
      __$$_FilmsCopyWithImpl<_$_Films>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmsToJson(
      this,
    );
  }
}

abstract class _Films implements Films {
  const factory _Films(
      {final int? count,
      final dynamic next,
      final dynamic previous,
      final List<FilmResults>? results}) = _$_Films;

  factory _Films.fromJson(Map<String, dynamic> json) = _$_Films.fromJson;

  @override
  int? get count;
  @override
  dynamic get next;
  @override
  dynamic get previous;
  @override
  List<FilmResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_FilmsCopyWith<_$_Films> get copyWith =>
      throw _privateConstructorUsedError;
}

FilmResults _$FilmResultsFromJson(Map<String, dynamic> json) {
  return _FilmResults.fromJson(json);
}

/// @nodoc
mixin _$FilmResults {
  String? get title => throw _privateConstructorUsedError;
  int? get episode_id => throw _privateConstructorUsedError;
  String? get opening_crawl => throw _privateConstructorUsedError;
  String? get director => throw _privateConstructorUsedError;
  String? get producer => throw _privateConstructorUsedError;
  String? get release_date => throw _privateConstructorUsedError;
  List<String>? get characters => throw _privateConstructorUsedError;
  List<String>? get planets => throw _privateConstructorUsedError;
  List<String>? get starships => throw _privateConstructorUsedError;
  List<String>? get vehicles => throw _privateConstructorUsedError;
  List<String>? get species => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  String? get edited => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmResultsCopyWith<FilmResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmResultsCopyWith<$Res> {
  factory $FilmResultsCopyWith(
          FilmResults value, $Res Function(FilmResults) then) =
      _$FilmResultsCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      int? episode_id,
      String? opening_crawl,
      String? director,
      String? producer,
      String? release_date,
      List<String>? characters,
      List<String>? planets,
      List<String>? starships,
      List<String>? vehicles,
      List<String>? species,
      String? created,
      String? edited,
      String? url});
}

/// @nodoc
class _$FilmResultsCopyWithImpl<$Res> implements $FilmResultsCopyWith<$Res> {
  _$FilmResultsCopyWithImpl(this._value, this._then);

  final FilmResults _value;
  // ignore: unused_field
  final $Res Function(FilmResults) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? episode_id = freezed,
    Object? opening_crawl = freezed,
    Object? director = freezed,
    Object? producer = freezed,
    Object? release_date = freezed,
    Object? characters = freezed,
    Object? planets = freezed,
    Object? starships = freezed,
    Object? vehicles = freezed,
    Object? species = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      episode_id: episode_id == freezed
          ? _value.episode_id
          : episode_id // ignore: cast_nullable_to_non_nullable
              as int?,
      opening_crawl: opening_crawl == freezed
          ? _value.opening_crawl
          : opening_crawl // ignore: cast_nullable_to_non_nullable
              as String?,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      planets: planets == freezed
          ? _value.planets
          : planets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      starships: starships == freezed
          ? _value.starships
          : starships // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_FilmResultsCopyWith<$Res>
    implements $FilmResultsCopyWith<$Res> {
  factory _$$_FilmResultsCopyWith(
          _$_FilmResults value, $Res Function(_$_FilmResults) then) =
      __$$_FilmResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      int? episode_id,
      String? opening_crawl,
      String? director,
      String? producer,
      String? release_date,
      List<String>? characters,
      List<String>? planets,
      List<String>? starships,
      List<String>? vehicles,
      List<String>? species,
      String? created,
      String? edited,
      String? url});
}

/// @nodoc
class __$$_FilmResultsCopyWithImpl<$Res> extends _$FilmResultsCopyWithImpl<$Res>
    implements _$$_FilmResultsCopyWith<$Res> {
  __$$_FilmResultsCopyWithImpl(
      _$_FilmResults _value, $Res Function(_$_FilmResults) _then)
      : super(_value, (v) => _then(v as _$_FilmResults));

  @override
  _$_FilmResults get _value => super._value as _$_FilmResults;

  @override
  $Res call({
    Object? title = freezed,
    Object? episode_id = freezed,
    Object? opening_crawl = freezed,
    Object? director = freezed,
    Object? producer = freezed,
    Object? release_date = freezed,
    Object? characters = freezed,
    Object? planets = freezed,
    Object? starships = freezed,
    Object? vehicles = freezed,
    Object? species = freezed,
    Object? created = freezed,
    Object? edited = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_FilmResults(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      episode_id: episode_id == freezed
          ? _value.episode_id
          : episode_id // ignore: cast_nullable_to_non_nullable
              as int?,
      opening_crawl: opening_crawl == freezed
          ? _value.opening_crawl
          : opening_crawl // ignore: cast_nullable_to_non_nullable
              as String?,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: characters == freezed
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      planets: planets == freezed
          ? _value._planets
          : planets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      starships: starships == freezed
          ? _value._starships
          : starships // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vehicles: vehicles == freezed
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      species: species == freezed
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
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
class _$_FilmResults implements _FilmResults {
  const _$_FilmResults(
      {this.title,
      this.episode_id,
      this.opening_crawl,
      this.director,
      this.producer,
      this.release_date,
      final List<String>? characters,
      final List<String>? planets,
      final List<String>? starships,
      final List<String>? vehicles,
      final List<String>? species,
      this.created,
      this.edited,
      this.url})
      : _characters = characters,
        _planets = planets,
        _starships = starships,
        _vehicles = vehicles,
        _species = species;

  factory _$_FilmResults.fromJson(Map<String, dynamic> json) =>
      _$$_FilmResultsFromJson(json);

  @override
  final String? title;
  @override
  final int? episode_id;
  @override
  final String? opening_crawl;
  @override
  final String? director;
  @override
  final String? producer;
  @override
  final String? release_date;
  final List<String>? _characters;
  @override
  List<String>? get characters {
    final value = _characters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _planets;
  @override
  List<String>? get planets {
    final value = _planets;
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

  final List<String>? _vehicles;
  @override
  List<String>? get vehicles {
    final value = _vehicles;
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

  @override
  final String? created;
  @override
  final String? edited;
  @override
  final String? url;

  @override
  String toString() {
    return 'FilmResults(title: $title, episode_id: $episode_id, opening_crawl: $opening_crawl, director: $director, producer: $producer, release_date: $release_date, characters: $characters, planets: $planets, starships: $starships, vehicles: $vehicles, species: $species, created: $created, edited: $edited, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmResults &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.episode_id, episode_id) &&
            const DeepCollectionEquality()
                .equals(other.opening_crawl, opening_crawl) &&
            const DeepCollectionEquality().equals(other.director, director) &&
            const DeepCollectionEquality().equals(other.producer, producer) &&
            const DeepCollectionEquality()
                .equals(other.release_date, release_date) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality().equals(other._planets, _planets) &&
            const DeepCollectionEquality()
                .equals(other._starships, _starships) &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles) &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.edited, edited) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(episode_id),
      const DeepCollectionEquality().hash(opening_crawl),
      const DeepCollectionEquality().hash(director),
      const DeepCollectionEquality().hash(producer),
      const DeepCollectionEquality().hash(release_date),
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_planets),
      const DeepCollectionEquality().hash(_starships),
      const DeepCollectionEquality().hash(_vehicles),
      const DeepCollectionEquality().hash(_species),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(edited),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_FilmResultsCopyWith<_$_FilmResults> get copyWith =>
      __$$_FilmResultsCopyWithImpl<_$_FilmResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmResultsToJson(
      this,
    );
  }
}

abstract class _FilmResults implements FilmResults {
  const factory _FilmResults(
      {final String? title,
      final int? episode_id,
      final String? opening_crawl,
      final String? director,
      final String? producer,
      final String? release_date,
      final List<String>? characters,
      final List<String>? planets,
      final List<String>? starships,
      final List<String>? vehicles,
      final List<String>? species,
      final String? created,
      final String? edited,
      final String? url}) = _$_FilmResults;

  factory _FilmResults.fromJson(Map<String, dynamic> json) =
      _$_FilmResults.fromJson;

  @override
  String? get title;
  @override
  int? get episode_id;
  @override
  String? get opening_crawl;
  @override
  String? get director;
  @override
  String? get producer;
  @override
  String? get release_date;
  @override
  List<String>? get characters;
  @override
  List<String>? get planets;
  @override
  List<String>? get starships;
  @override
  List<String>? get vehicles;
  @override
  List<String>? get species;
  @override
  String? get created;
  @override
  String? get edited;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_FilmResultsCopyWith<_$_FilmResults> get copyWith =>
      throw _privateConstructorUsedError;
}
