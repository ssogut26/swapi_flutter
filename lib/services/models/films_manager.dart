part of 'package:swapi_flutter/services/network/network_manager.dart';

class FilmManager {
  Future<List<FilmResults>?> fetchFilms() async {
    try {
      var response = await NetworkManager.instance._dio.get('films');
      int page = 0;
      List<FilmResults> tempList = [];
      List<FilmResults> tempList2 = [];
      do {
        page++;
        response =
            await NetworkManager.instance._dio.getUri(Uri.parse('films/?page=$page'));
        if (response.statusCode == 200) {
          Films result = Films.fromJson(response.data);
          tempList =
              result.results!.asMap().entries.map((e) => result.results![e.key]).toList();
          tempList2.addAll(tempList);
        }
      } while (response.data['next'] != null && page <= 6);
      return tempList2;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<FilmResults?> fetchFilm(int index) async {
    var uri = Uri.parse('films/$index');
    var response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    if (response.statusCode == 200) {
      return FilmResults.fromJson(response.data);
    }

    return null;
  }
}
