import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

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
      body: FutureBuilder<PeopleResults?>(
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
          if (snapshot.hasData) {
            return Column(
              children: [
                Text(name),
                Methods().cachedResultImageBox(context, image),
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
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
