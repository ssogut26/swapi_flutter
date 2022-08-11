import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/home/home.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
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
        title: const Text('Home'),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          routeWithImage(context, snapshot, 'Films', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FilmsView(),
                              ),
                            );
                          }, 'https://starwars-visualguide.com/assets/img/categories/films.jpg'),
                          routeWithImage(context, snapshot, 'Characters', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PeoplesView(),
                              ),
                            );
                          }, 'https://starwars-visualguide.com/assets/img/categories/character.jpg'),
                          routeWithImage(context, snapshot, 'Planets', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PlanetsView(),
                              ),
                            );
                          }, 'https://starwars-visualguide.com/assets/img/categories/planets.jpg'),
                          routeWithImage(context, snapshot, 'Star Ships', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StarShipsView(),
                              ),
                            );
                          }, 'https://starwars-visualguide.com/assets/img/categories/starships.jpg'),
                          routeWithImage(context, snapshot, 'Vehicles', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VehiclesView(),
                              ),
                            );
                          }, 'https://starwars-visualguide.com/assets/img/categories/vehicles.jpg'),
                          routeWithImage(context, snapshot, 'Species', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SpeciesView(),
                              ),
                            );
                          }, 'https://starwars-visualguide.com/assets/img/categories/species.jpg'),
                        ],
                      ),
                    );
                  },
                ),
              );
            } else {
              return Text("${snapshot.error}");
            }
          }),
    );
  }

  Column routeWithImage(BuildContext context, AsyncSnapshot<Home?> snapshot, text,
      void Function()? onTap, String imageUrl) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: CachedNetworkImage(
            fit: BoxFit.fitWidth,
            imageUrl: imageUrl,
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
      ],
    );
  }
}
