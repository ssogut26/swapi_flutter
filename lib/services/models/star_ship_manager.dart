part of 'package:swapi_flutter/services/network/network_manager.dart';

class StarShipManager {
  Future<List<StarShipResults>?> fetchStarShips(int page) async {
    try {
      var response = await NetworkManager.instance._dio.get('starships/?page=$page');
      if (response.statusCode == 200) {
        return StarShips.fromJson(response.data).results;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
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
