import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/home/home.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/views/films/films_view.dart';
import 'package:swapi_flutter/views/people/peoples_view.dart';
import 'package:swapi_flutter/views/planets/planets_view.dart';
import 'package:swapi_flutter/views/species/species_view.dart';
import 'package:swapi_flutter/views/starships/starships_view.dart';
import 'package:swapi_flutter/views/vehicles/vehicles_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<Home?> home;
  @override
  void initState() {
    home = _apiService.fetchHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOME',
        ),
      ),
      body: FutureBuilder<Home?>(
          future: home,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: ProjectPaddings.pagePadding,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Welcome to the Star Wars Universe',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            routeWithImage(context, snapshot, 'Films', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FilmsView(),
                                ),
                              );
                            }, '${ConstantTexts().categoryBaseUrl}films.jpg'),
                            routeWithImage(context, snapshot, 'Characters', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PeoplesView(page: 1),
                                ),
                              );
                            }, '${ConstantTexts().categoryBaseUrl}character.jpg'),
                            routeWithImage(context, snapshot, 'Planets', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PlanetsView(page: 1),
                                ),
                              );
                            }, '${ConstantTexts().categoryBaseUrl}planets.jpg'),
                            routeWithImage(context, snapshot, 'Star Ships', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StarShipsView(page: 1),
                                ),
                              );
                            }, '${ConstantTexts().categoryBaseUrl}starships.jpg'),
                            routeWithImage(context, snapshot, 'Vehicles', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VehiclesView(page: 1),
                                ),
                              );
                            }, '${ConstantTexts().categoryBaseUrl}vehicles.jpg'),
                            routeWithImage(context, snapshot, 'Species', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SpeciesView(),
                                ),
                              );
                            }, '${ConstantTexts().categoryBaseUrl}species.jpg'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }

  Card routeWithImage(BuildContext context, AsyncSnapshot<Home?> snapshot, text,
      void Function()? onTap, String imageUrl) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: CachedNetworkImage(
                fit: BoxFit.fitWidth,
                imageUrl: imageUrl,
              ),
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
