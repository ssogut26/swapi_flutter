part of 'package:swapi_flutter/services/network/network_manager.dart';

class VehicleManager {
  Future<List<VehicleResult>?> fetchVehicles(int page) async {
    try {
      var response = await NetworkManager.instance._dio.get('vehicles/?page=$page');
      if (response.statusCode == 200) {
        return Vehicles.fromJson(response.data).results;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
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
