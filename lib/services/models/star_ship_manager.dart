part of 'package:swapi_flutter/services/network/network_manager.dart';

class StarShipManager {
  Future<List<StarShipResults>?> fetchStarShips() async {
    try {
      var response = await NetworkManager.instance._dio.get('starships');
      int page = 0;
      List<StarShipResults> tempList = [];
      List<StarShipResults> tempList2 = [];
      do {
        page++;
        response =
            await NetworkManager.instance._dio.getUri(Uri.parse('starships/?page=$page'));
        if (response.statusCode == 200) {
          StarShips result = StarShips.fromJson(response.data);
          tempList =
              result.results!.asMap().entries.map((e) => result.results![e.key]).toList();
          tempList2.addAll(tempList);
          tempList2.cast().getRange(1, 10);
        }
      } while (response.data['next'] != null && page <= 9);
      return tempList2;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<StarShipResults?> fetchStarShip(int index) async {
    var uri = Uri.parse('starships/${index + 1}');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    if (response.statusCode == 200) {
      return StarShipResults.fromJson(response.data);
    }

    return null;
  }
}
