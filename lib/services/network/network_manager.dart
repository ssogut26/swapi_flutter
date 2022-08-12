import 'package:dio/dio.dart';
import 'package:swapi_flutter/models/films/films.dart';
import 'package:swapi_flutter/models/home/home.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/models/planets/planets.dart';
import 'package:swapi_flutter/models/species/species.dart';
import 'package:swapi_flutter/models/starships/starships.dart';
import 'package:swapi_flutter/models/vehicles/vehicles.dart';

part 'package:swapi_flutter/services/models/films_manager.dart';
part 'package:swapi_flutter/services/models/home_manager.dart';
part 'package:swapi_flutter/services/models/people_manager.dart';
part 'package:swapi_flutter/services/models/planet_manager.dart';
part 'package:swapi_flutter/services/models/species_manager.dart';
part 'package:swapi_flutter/services/models/star_ship_manager.dart';
part 'package:swapi_flutter/services/models/vehicles_manager.dart';

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
  fetchFilm(index) => FilmManager().fetchFilm(index);
  fetchPlanets() => PlanetManager().fetchPlanets();
  fetchPlanet(index) => PlanetManager().fetchPlanet(index);
  fetchVehicles() => VehicleManager().fetchVehicles();
  fetchVehicle(index) => VehicleManager().fetchVehicle(index);
  fetchStarships() => StarShipManager().fetchStarShips();
  fetchStarship(index) => StarShipManager().fetchStarShip(index);
  fetchAllSpecies() => SpeciesManager().fetchAllSpecies();
  fetchSpecies(index) => SpeciesManager().fetchSpecies(index);
}
