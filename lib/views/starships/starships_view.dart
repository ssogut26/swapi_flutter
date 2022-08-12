import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/starships/starships.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
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

  @override
  void initState() {
    starShips = _api.fetchStarships();
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
              var url = snapshot.data?[index].url?.substring(32) ?? '';
              index = int.parse(url.split('/')[0]);
              String errorUrl = ConstantTexts().errorUrl;
              String imageUrl = '${ConstantTexts().starShipBaseUrl}index.jpg';
              CachedNetworkImage image = Methods().cachedImage(errorUrl, imageUrl);
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StarShipResultsView(
                          index: index,
                          image: image,
                        );
                      },
                    ),
                  );
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
