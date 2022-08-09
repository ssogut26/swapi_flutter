import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';

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
  final uri = 'https://swapi.dev/api/planets/1/';
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
      body: FutureBuilder<PeopleResults?>(
        future: people,
        builder: (context, snapshot) {
          String name = snapshot.data?.name ?? '';
          String height = snapshot.data?.height ?? '';
          String birthYear = snapshot.data?.birth_year ?? '';
          String mass = snapshot.data?.mass ?? '';
          String gender = snapshot.data?.gender ?? '';
          String hairColor = snapshot.data?.hair_color ?? '';
          String skinColor = snapshot.data?.skinColor ?? '';
          String homeWorld = (snapshot.data?.homeworld ?? '');

          return Column(
            children: [
              image,
              Text(name),
              Text(birthYear),
              Text(height),
              Text(mass),
              Text(gender),
              Text(hairColor),
              Text(skinColor),
              TextButton(
                onPressed: () {},
                child: Text(homeWorld),
              ),
            ],
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
