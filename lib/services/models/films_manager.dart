// ignore_for_file: inference_failure_on_function_invocation

part of 'package:swapi_flutter/services/network/network_manager.dart';

class FilmManager {
  Future<List<FilmResults>?> fetchFilms() async {
    try {
      final response = await NetworkManager.instance._dio.get('films');
      if (response.statusCode == 200) {
        final films = response.data;
        if (films is Map<String, dynamic>) {
          return Films.fromJson(films).results;
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<FilmResults?> fetchFilm(int index) async {
    final uri = Uri.parse('films/${index + 1}');
    final response = await NetworkManager.instance._dio.get(
      '$uri',
    );
    if (response.statusCode == 200) {
      return FilmResults.fromJson(response.data);
    }

    return null;
  }
}
