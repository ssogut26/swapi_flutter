import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/films/films.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class FilmResultsView extends StatefulWidget {
  final int index;
  final CachedNetworkImage image;
  final String title;
  const FilmResultsView({
    required this.index,
    required this.image,
    required this.title,
    Key? key,
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
  late String title;

  @override
  void initState() {
    film = _apiService.fetchFilm(widget.index);
    image = widget.image;
    title = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: getFilmResults(),
    );
  }

  FutureBuilder<FilmResults?> getFilmResults() {
    return FutureBuilder<FilmResults?>(
      future: film,
      builder: (context, snapshot) {
        var main = snapshot.data;
        String director = main?.director ?? '';
        String producer = main?.producer ?? '';
        String releaseDate = main?.release_date ?? '';
        String openingCrawl = main?.opening_crawl ?? '';
        Object episodeId = main?.episode_id ?? '';
        if (snapshot.hasData) {
          return getFilmProperties(
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

  SingleChildScrollView getFilmProperties(BuildContext context, String releaseDate,
      String openingCrawl, String director, String producer, Object episodeId) {
    return SingleChildScrollView(
      child: Padding(
        padding: ProjectPaddings.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Hero(
              tag: widget.index,
              child: Methods().cachedResultImageBox(
                context,
                image,
              ),
            ),
            Container(
              margin: ProjectPaddings.marginPadding,
              padding: ProjectPaddings.pagePadding,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Methods().boldAndMediumText('Release Date: ', releaseDate),
                  Methods().boldAndMediumText('Director: ', director),
                  Methods().boldAndMediumText('Producer: ', producer),
                  Methods().boldAndMediumText('Episode Id: ', '$episodeId'),
                  Methods().boldAndMediumText('Opening Crawl: \n', openingCrawl),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
