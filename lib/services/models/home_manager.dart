part of 'package:swapi_flutter/services/network/network_manager.dart';

class HomePageManager {
  Future<Home?> fetchHome() async {
    try {
      var response = await NetworkManager.instance._dio.get('/');
      if (response.statusCode == 200) {
        return Home.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
