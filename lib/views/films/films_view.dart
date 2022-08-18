import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/films/films.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/films/film_view.dart';

class FilmsView extends StatefulWidget {
  const FilmsView({Key? key}) : super(key: key);

  @override
  State<FilmsView> createState() => _FilmsViewState();
}

class _FilmsViewState extends State<FilmsView> {
  final _api = NetworkManager.instance;
  late Future<List<FilmResults>?> films;
  int index = 0;

  @override
  void initState() {
    films = _api.fetchFilms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Films'),
      ),
      body: FutureBuilder<List<FilmResults>?>(
        future: films,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                var main = snapshot.data?[index];
                String title = main?.title ?? '';
                var imageUrl = '${ConstantTexts().filmsBaseUrl}${index + 1}.jpg';
                var image = CachedNetworkImage(imageUrl: imageUrl);
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FilmResultsView(
                            index: index + 1,
                            image: image,
                          );
                        },
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Methods().cachedPhotoBox(image),
                        Text(
                          title,
                          style:
                              const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const Divider(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        }),
      ),
    );
  }
}
