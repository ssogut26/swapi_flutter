part of 'package:swapi_flutter/services/network/network_manager.dart';

class SpeciesManager {
  Future<List<SpeciesResult>?> fetchAllSpecies() async {
    try {
      var response = await NetworkManager.instance._dio.get('species');
      int page = 0;
      List<SpeciesResult> tempList = [];
      List<SpeciesResult> tempList2 = [];
      do {
        page++;
        response =
            await NetworkManager.instance._dio.getUri(Uri.parse('species/?page=$page'));
        if (response.statusCode == 200) {
          Species result = Species.fromJson(response.data);
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

  Future<SpeciesResult?> fetchSpecies(int index) async {
    Uri uri = Uri.parse('species/${index + 1}');
    Response<dynamic> response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    if (response.statusCode == 200) {
      return SpeciesResult.fromJson(response.data);
    }

    return null;
  }
}
