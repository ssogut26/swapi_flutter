import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/starships/starships.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/starships/starship_view.dart';

class StarShipsView extends StatefulWidget {
  const StarShipsView({Key? key}) : super(key: key);

  @override
  State<StarShipsView> createState() => _StarShipsViewState();
}

class _StarShipsViewState extends State<StarShipsView> {
  final _api = NetworkManager.instance;
  late Future<List<StarShipResults>?> starShips;
  // late Future<PlanetResults?> planet;
  int index = 0;

  @override
  void initState() {
    starShips = _api.fetchStarships();
    // film = _api.fetchFilm(index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Ships'),
      ),
      body: FutureBuilder<List<StarShipResults>?>(
        future: starShips,
        builder: ((context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              var main = snapshot.data?[index];
              String name = main?.name ?? '';
              var errorUrl =
                  'https://starwars-visualguide.com/assets/img/placeholder.jpg';
              var imageUrl = 'assets/images/starships/${index + 1}.jpg';
              var image = FadeInImage(
                placeholder: NetworkImage(errorUrl),
                placeholderErrorBuilder: (context, error, _) => Image.network(errorUrl),
                image: Image.asset(imageUrl).image,
              );
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StarShipResultsView(
                      index: index,
                      image: image,
                    );
                  }));
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Row(
                    children: [
                      Methods().fadeInPhotoBox(image),
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
