import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/planets/planets.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/planets/planet_view.dart';

class PlanetsView extends StatefulWidget {
  const PlanetsView({Key? key}) : super(key: key);

  @override
  State<PlanetsView> createState() => _PlanetsViewState();
}

class _PlanetsViewState extends State<PlanetsView> {
  final _api = NetworkManager.instance;
  late Future<List<PlanetResults>?> planets;
  late Future<PlanetResults?> planet;
  int index = 0;

  @override
  void initState() {
    planets = _api.fetchPlanets();
    // film = _api.fetchFilm(index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planets'),
      ),
      body: FutureBuilder<List<PlanetResults>?>(
        future: planets,
        builder: ((context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              var main = snapshot.data?[index];
              String name = main?.name ?? '';
              var errorUrl =
                  'https://starwars-visualguide.com/assets/img/placeholder.jpg';
              var imageUrl =
                  'https://starwars-visualguide.com/assets/img/planets/${index + 1}.jpg';
              var image = CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) {
                  return Image.network(errorUrl);
                },
              );
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PlanetResultsView(
                      index: index,
                      image: image,
                    );
                  }));
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Row(
                    children: [
                      Methods().cachedPhotoBox(image),
                      Text(name),
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
