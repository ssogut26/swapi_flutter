part of 'package:swapi_flutter/services/network/network_manager.dart';

class PeopleManager {
  Future<List<PeopleResults>?> fetchPeople(int page) async {
    try {
      var response = await NetworkManager.instance._dio.get('people/?page=$page');
      if (response.statusCode == 200) {
        return Peoples.fromJson(response.data).results;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return [];
  }

  Future<PeopleResults?> fetchPerson(int index) async {
    var uri = Uri.parse('people/$index');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    var a = (response.data['url'] as String).substring(29);
    index = int.parse(a.split('/')[0]);

    var newUri = Uri.parse('people/$index');
    var response2 = await NetworkManager.instance._dio.get(
      '$newUri',
    );
    if (response2.statusCode == 200) {
      return PeopleResults.fromJson(response.data);
    }

    return null;
  }
}
