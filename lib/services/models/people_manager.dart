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
          tempList2.cast().getRange(1, 10);
        }
      } while (response.data['next'] != null && page <= 9);
      return tempList2;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<PeopleResults?> fetchPerson(int index) async {
    var uri = Uri.parse('people/${index + 1}');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    if (response.statusCode == 200) {
      return PeopleResults.fromJson(response.data);
    }

    return null;
  }
}
