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
        }
      } while (response.data['next'] != null && page <= 4);
      return tempList2;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<StarShipResults?> fetchStarShip(int index) async {
    var uri = Uri.parse('starships/$index');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    var a = (response.data['url'] as String).substring(32);
    index = int.parse(a.split('/')[0]);
    var newUri = Uri.parse('starships/$index');
    var response2 = await NetworkManager.instance._dio.get(
      '$newUri',
    );
    if (response2.statusCode == 200) {
      return StarShipResults.fromJson(response.data);
    }

    return null;
  }
}
