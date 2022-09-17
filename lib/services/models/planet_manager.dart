part of 'package:swapi_flutter/services/network/network_manager.dart';

class PlanetManager {
  Future<List<PlanetResults>?> fetchPlanets(int page) async {
    var response = await NetworkManager.instance._dio.get('planets/?page=$page');
    if (response.statusCode == 200) {
      return Planets.fromJson(response.data).results;
    }
    return [];
  }

  Future<PlanetResults?> fetchPlanet(int index) async {
    var uri = Uri.parse('planets/${index + 1}');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    if (response.statusCode == 200) {
      return PlanetResults.fromJson(response.data);
    }

    return null;
  }
}
