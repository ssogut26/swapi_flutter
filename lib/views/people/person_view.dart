import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/planets/planet_view.dart';

class PeopleResultsView extends StatefulWidget {
  final int index;
  final CachedNetworkImage image;
  const PeopleResultsView({
    required this.index,
    required this.image,
    Key? key,
    people,
  }) : super(
          key: key,
        );

  @override
  State<PeopleResultsView> createState() => _PeopleResultsViewState();
}

class _PeopleResultsViewState extends State<PeopleResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<PeopleResults?> people;
  late CachedNetworkImage image;
  @override
  void initState() {
    people = _apiService.fetchPerson(widget.index);
    image = widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: getPeopleResult(),
    );
  }

  FutureBuilder<PeopleResults?> getPeopleResult() {
    return FutureBuilder<PeopleResults?>(
      future: people,
      builder: (context, snapshot) {
        String name = snapshot.data?.name ?? '';
        String height = snapshot.data?.height ?? '';
        String birthYear = snapshot.data?.birth_year ?? '';
        String mass = snapshot.data?.mass ?? '';
        String gender = snapshot.data?.gender ?? '';
        String hairColor = snapshot.data?.hair_color ?? '';
        String skinColor = snapshot.data?.skin_color ?? '';
        String homeWorld = (snapshot.data?.homeworld ?? '');
        String url = homeWorld.substring(30);
        int? index = int.tryParse(url.split('/')[0]);
        String imageUrl = '${ConstantTexts().planetsBaseUrl}$index.jpg';
        CachedNetworkImage planetImage = Methods().cachedImage(imageUrl);
        if (snapshot.hasData) {
          return getPeopleProperty(
            name,
            context,
            birthYear,
            height,
            mass,
            gender,
            hairColor,
            skinColor,
            index,
            planetImage,
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Padding getPeopleProperty(
      String name,
      BuildContext context,
      String birthYear,
      String height,
      String mass,
      String gender,
      String hairColor,
      String skinColor,
      int? index,
      CachedNetworkImage planetImage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Methods().cachedResultImageBox(context, image),
          Text('Birth Year: $birthYear'),
          Text('Height: $height'),
          Text('Mass: $mass'),
          Text('Gender: $gender'),
          Text('Hair Color: $hairColor'),
          Text('Skin Color:' '$skinColor'),
          GestureDetector(
              onTap: () async {
                await Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PlanetResultsView(
                    index: index! - 1,
                    image: planetImage,
                  );
                }));
              },
              child: Column(
                children: [
                  const Text('Home World:'),
                  SizedBox(height: 100, width: 100, child: planetImage),
                ],
              )),
        ],
      ),
    );
  }
}
