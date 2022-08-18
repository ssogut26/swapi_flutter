part of 'package:swapi_flutter/services/network/network_manager.dart';

class VehicleManager {
  Future<List<VehicleResult>?> fetchVehicles() async {
    try {
      var response = await NetworkManager.instance._dio.get('vehicles');
      int page = 0;
      List<VehicleResult> tempList = [];
      List<VehicleResult> tempList2 = [];
      do {
        page++;
        response =
            await NetworkManager.instance._dio.getUri(Uri.parse('vehicles/?page=$page'));
        if (response.statusCode == 200) {
          Vehicles result = Vehicles.fromJson(response.data);
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

  Future<VehicleResult?> fetchVehicle(int index) async {
    var uri = Uri.parse('vehicles/$index');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    var a = (response.data['url'] as String).substring(31);
    index = int.parse(a.split('/')[0]);
    var newUri = Uri.parse('vehicles/$index');
    var response2 = await NetworkManager.instance._dio.get(
      '$newUri',
    );
    if (response2.statusCode == 200) {
      return VehicleResult.fromJson(response.data);
    }

    return null;
  }
}
