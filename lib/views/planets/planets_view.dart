import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/planets/planets.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
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

  @override
  void initState() {
    planets = _api.fetchPlanets();
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
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                var main = snapshot.data?[index];
                String name = main?.name ?? '';
                var imageUrl = '${ConstantTexts().planetsBaseUrl}${index + 1}.jpg';
                CachedNetworkImage image = Methods().cachedImage(imageUrl);
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Methods().cachedPhotoBox(image),
                        Text(
                          name,
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
