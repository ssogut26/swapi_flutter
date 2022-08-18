part of 'package:swapi_flutter/services/network/network_manager.dart';

class PlanetManager {
  Future<List<PlanetResults>?> fetchPlanets() async {
    try {
      var response = await NetworkManager.instance._dio.get('planets');
      int page = 0;
      List<PlanetResults> tempList = [];
      List<PlanetResults> tempList2 = [];
      do {
        page++;
        response =
            await NetworkManager.instance._dio.getUri(Uri.parse('planets/?page=$page'));
        if (response.statusCode == 200) {
          Planets result = Planets.fromJson(response.data);
          tempList =
              result.results!.asMap().entries.map((e) => result.results![e.key]).toList();
          tempList2.addAll(tempList);
          tempList2.cast().getRange(1, 10);
        }
      } while (response.data['next'] != null && page <= 9);
      return tempList2;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
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
