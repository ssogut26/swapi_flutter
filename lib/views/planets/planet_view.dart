import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/planets/planets.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';

class PlanetResultsView extends StatefulWidget {
  final int index;
  final CachedNetworkImage image;
  const PlanetResultsView({
    required this.index,
    required this.image,
    Key? key,
    people,
  }) : super(
          key: key,
        );

  @override
  State<PlanetResultsView> createState() => _PlanetResultsViewState();
}

class _PlanetResultsViewState extends State<PlanetResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<PlanetResults?> planet;
  late CachedNetworkImage image;

  @override
  void initState() {
    planet = _apiService.fetchPlanet(widget.index);
    image = widget.image;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // name: Text(name),
          ),
      body: FutureBuilder<PlanetResults?>(
        future: planet,
        builder: (context, snapshot) {
          String name = snapshot.data?.name ?? '';
          String climate = snapshot.data?.climate ?? '';
          String diameter = snapshot.data?.diameter ?? '';
          String gravity = snapshot.data?.gravity ?? '';
          String orbitalPeriod = snapshot.data?.orbital_period ?? '';
          Object population = snapshot.data?.population ?? '';
          Object surfaceWater = snapshot.data?.surface_water ?? '';
          Object rotationPeriod = snapshot.data?.rotation_period ?? '';
          Object terrain = snapshot.data?.terrain ?? '';
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: image,
                  ),
                  Text('Diameter: $diameter'),
                  Text('Population: $population'),
                  Text('Climate: $climate'),
                  Text('Terrain: $terrain'),
                  Text('Gravity: $gravity'),
                  Text('Surface Water: $surfaceWater'),
                  Text('Rotation Period: $rotationPeriod'),
                  Text('Orbital Period: $orbitalPeriod'),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
