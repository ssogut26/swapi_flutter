import 'package:dio/dio.dart';
import 'package:swapi_flutter/models/films/films.dart';
import 'package:swapi_flutter/models/home/home.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';

part 'package:swapi_flutter/services/models/films_manager.dart';
part 'package:swapi_flutter/services/models/home_manager.dart';
part 'package:swapi_flutter/services/models/people_manager.dart';

class NetworkManager {
  final url = 'https://swapi.dev/api/';
  NetworkManager._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: url,
      ),
    );
  }
  late final Dio _dio;

  static final NetworkManager instance = NetworkManager._();
  Dio get service => _dio;
  fetchPeople() => PeopleManager().fetchPeople();
  fetchPerson(index) => PeopleManager().fetchPerson(index);
  fetchHome() => HomePageManager().fetchHome();
  fetchFilms() => FilmManager().fetchFilms();
  // fetchFilm(index) => FilmManager().fetchFilm(index);
}
