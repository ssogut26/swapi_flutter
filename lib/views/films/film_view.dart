import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/films/films.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class FilmResultsView extends StatefulWidget {
  final int index;
  final CachedNetworkImage image;
  const FilmResultsView({
    required this.index,
    required this.image,
    Key? key,
    people,
  }) : super(
          key: key,
        );

  @override
  State<FilmResultsView> createState() => _FilmResultsViewState();
}

class _FilmResultsViewState extends State<FilmResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<FilmResults?> film;
  late CachedNetworkImage image;

  @override
  void initState() {
    film = _apiService.fetchFilm(widget.index);
    image = widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: getFilmResults(),
    );
  }

  FutureBuilder<FilmResults?> getFilmResults() {
    return FutureBuilder<FilmResults?>(
      future: film,
      builder: (context, snapshot) {
        var main = snapshot.data;
        String title = main?.title ?? '';
        String director = main?.director ?? '';
        String producer = main?.producer ?? '';
        String releaseDate = main?.release_date ?? '';
        String openingCrawl = main?.opening_crawl ?? '';
        Object episodeId = main?.episode_id ?? '';
        if (snapshot.hasData) {
          return getFilmProperties(
            title,
            context,
            releaseDate,
            openingCrawl,
            director,
            producer,
            episodeId,
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  SingleChildScrollView getFilmProperties(
      String title,
      BuildContext context,
      String releaseDate,
      String openingCrawl,
      String director,
      String producer,
      Object episodeId) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Methods().cachedResultImageBox(context, image),
          Text('Release Date: $releaseDate'),
          Text('Opening Crawl: \n$openingCrawl'),
          Text('Director: $director'),
          Text('Producer: $producer'),
          Text('EpisodeId: $episodeId'),
          // Text('Characters: $characters'),
          // Text('Planets: $planets'),
        ],
      ),
    );
  }
}
