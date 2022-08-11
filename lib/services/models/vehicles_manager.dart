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
      print(e);
    }
    return null;
  }

  Future<VehicleResult?> fetchVehicle({int index = 4}) async {
    var uri = Uri.parse('vehicles/${index + 1}');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    if (response.statusCode == 200) {
      return VehicleResult.fromJson(response.data);
    }

    return null;
  }
}
