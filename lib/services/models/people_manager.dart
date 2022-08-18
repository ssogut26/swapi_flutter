part of 'package:swapi_flutter/services/network/network_manager.dart';

class PeopleManager {
  Future<List<PeopleResults>?> fetchPeople() async {
    try {
      var response = await NetworkManager.instance._dio.get('people');
      int page = 0;
      List<PeopleResults> tempList = [];
      List<PeopleResults> tempList2 = [];
      do {
        page++;
        response =
            await NetworkManager.instance._dio.getUri(Uri.parse('people/?page=$page'));
        if (response.statusCode == 200) {
          Peoples result = Peoples.fromJson(response.data);
          tempList =
              result.results!.asMap().entries.map((e) => result.results![e.key]).toList();
          tempList2.addAll(tempList);
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
