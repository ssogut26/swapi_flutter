part of 'package:swapi_flutter/services/network/network_manager.dart';

class FilmManager {
  Future<List<FilmResults>?> fetchFilms() async {
    try {
      var response = await NetworkManager.instance._dio.get('films');

      if (response.statusCode == 200) {
        return Films.fromJson(response.data).results;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
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
