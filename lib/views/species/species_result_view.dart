import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/species/species.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';

class SpeciesResultsView extends StatefulWidget {
  final int index;
  final CachedNetworkImage image;
  const SpeciesResultsView({
    required this.index,
    required this.image,
    Key? key,
    people,
  }) : super(
          key: key,
        );

  @override
  State<SpeciesResultsView> createState() => _SpeciesResultsViewState();
}

class _SpeciesResultsViewState extends State<SpeciesResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<SpeciesResult?> species;
  late CachedNetworkImage image;
  @override
  void initState() {
    species = _apiService.fetchSpecies(widget.index);
    image = widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<SpeciesResult?>(
        future: species,
        builder: (context, snapshot) {
          String name = snapshot.data?.name ?? '';
          String height = snapshot.data?.average_height ?? '';
          String averageLifeSpan = snapshot.data?.average_lifespan ?? '';
          String classification = snapshot.data?.classification ?? '';
          String eyeColors = snapshot.data?.eye_colors ?? '';
          String hairColors = snapshot.data?.hair_colors ?? '';
          String language = snapshot.data?.language ?? '';
          String homeWorld = (snapshot.data?.homeworld ?? '');

          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: image,
                ),
                Text(name),
                Text(averageLifeSpan),
                Text(height),
                Text(classification),
                Text(eyeColors),
                Text(hairColors),
                Text(language),
                // TextButton(
                //   onPressed: () {},
                //   child: Text(homeWorld),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future fetchAlbumDetailData(uri) async {
    print(Uri.parse(uri));
    // Print out: https://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=755bf5e882b716dac814852b5e8e2e52&artist=Weezer&album=Make%20Believe&format=json
    final result = await _apiService.service
        .getUri(Uri.parse(uri))
        .timeout(const Duration(seconds: 5));
    print(result.data['name']);

    return (result.data['name']);
  }
}
