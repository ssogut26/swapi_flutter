import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/planets/planets.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class PlanetResultsView extends StatefulWidget {
  const PlanetResultsView({
    required this.index,
    required this.image,
    required this.name,
    super.key,
  });
  final int index;
  final String name;
  final CachedNetworkImage image;

  @override
  State<PlanetResultsView> createState() => _PlanetResultsViewState();
}

class _PlanetResultsViewState extends State<PlanetResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<PlanetResults?> planet;
  late CachedNetworkImage image;
  late String name;

  @override
  void initState() {
    planet = _apiService.fetchPlanet(widget.index);
    image = widget.image;
    name = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: getPlanetResults(),
    );
  }

  FutureBuilder<PlanetResults?> getPlanetResults() {
    return FutureBuilder<PlanetResults?>(
      future: planet,
      builder: (context, snapshot) {
        final name = snapshot.data?.name ?? '';
        final climate = snapshot.data?.climate ?? '';
        final diameter = snapshot.data?.diameter ?? '';
        final gravity = snapshot.data?.gravity ?? '';
        final orbitalPeriod = snapshot.data?.orbital_period ?? '';
        final Object population = snapshot.data?.population ?? '';
        final Object surfaceWater = snapshot.data?.surface_water ?? '';
        final Object rotationPeriod = snapshot.data?.rotation_period ?? '';
        final Object terrain = snapshot.data?.terrain ?? '';
        if (snapshot.hasData) {
          return planetProperties(
            context,
            diameter,
            population,
            climate,
            terrain,
            gravity,
            surfaceWater,
            rotationPeriod,
            orbitalPeriod,
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  SingleChildScrollView planetProperties(
    BuildContext context,
    String diameter,
    Object population,
    String climate,
    Object terrain,
    String gravity,
    Object surfaceWater,
    Object rotationPeriod,
    String orbitalPeriod,
  ) {
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
              tag: 'planet${widget.index}',
              child: Methods().cachedResultImageBox(
                context,
                image,
              ),
            ),
            Methods().dataContainer(
              context,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Methods().boldAndMediumText('Diameter :', diameter),
                  Methods().boldAndMediumText('Population :', '$population'),
                  Methods().boldAndMediumText('Climate :', climate),
                  Methods().boldAndMediumText('Terrain :', '$terrain'),
                  Methods().boldAndMediumText('Gravity :', gravity),
                  Methods().boldAndMediumText('Surface Water :', '$surfaceWater'),
                  Methods().boldAndMediumText('Rotation Period :', '$rotationPeriod'),
                  Methods().boldAndMediumText('Orbital Period :', orbitalPeriod),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
