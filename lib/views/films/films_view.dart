import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/films/films.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/reusableMethots.dart';

class FilmsView extends StatefulWidget {
  const FilmsView({Key? key}) : super(key: key);

  @override
  State<FilmsView> createState() => _FilmsViewState();
}

class _FilmsViewState extends State<FilmsView> {
  final _api = NetworkManager.instance;
  late Future<List<FilmResults>?> films;
  late Future<FilmResults?> film;
  int index = 0;

  @override
  void initState() {
    films = _api.fetchFilms();
    // film = _api.fetchFilm(index);
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
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              var main = snapshot.data?[index];
              String title = main?.title ?? '';
              var imageUrl =
                  'https://starwars-visualguide.com/assets/img/films/${index + 1}.jpg';
              var image = CachedNetworkImage(imageUrl: imageUrl);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    this.index = index;
                  });
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Row(
                    children: [
                      Methods().photoBox(image),
                      Text(title),
                      const Divider(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
