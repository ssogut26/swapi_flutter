import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class PeopleResultsView extends StatefulWidget {
  const PeopleResultsView({
    required this.index,
    required this.image,
    required this.name,
    super.key,
  });
  final int index;
  final String name;
  final CachedNetworkImage image;

  @override
  State<PeopleResultsView> createState() => _PeopleResultsViewState();
}

class _PeopleResultsViewState extends State<PeopleResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<PeopleResults?> people;
  late CachedNetworkImage image;
  late String name;
  @override
  void initState() {
    people = _apiService.fetchPerson(widget.index);
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
      body: getPeopleResult(),
    );
  }

  FutureBuilder<PeopleResults?> getPeopleResult() {
    return FutureBuilder<PeopleResults?>(
      future: people,
      builder: (context, snapshot) {
        final main = snapshot.data;
        final height = main?.height ?? '';
        final birthYear = main?.birth_year ?? '';
        final mass = main?.mass ?? '';
        final gender = main?.gender ?? '';
        final hairColor = main?.hair_color ?? '';
        final skinColor = main?.skin_color ?? '';
        final eyeColor = main?.eye_color ?? '';

        return getPeopleProperty(
          context,
          birthYear,
          height,
          mass,
          gender,
          hairColor,
          skinColor,
          eyeColor,
        );
      },
    );
  }

  Padding getPeopleProperty(
    BuildContext context,
    String birthYear,
    String height,
    String mass,
    String gender,
    String hairColor,
    String skinColor,
    String eyeColor,
  ) {
    return Padding(
      padding: ProjectPaddings.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 50,
            child: Hero(
              tag: widget.index,
              child: Methods().cachedResultImageBox(
                context,
                image,
              ),
            ),
          ),
          Expanded(
            flex: 50,
            child: Methods().dataContainer(
              context,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Methods().boldAndMediumText('Birth Year: ', birthYear),
                  Methods().boldAndMediumText('Height: ', height),
                  Methods().boldAndMediumText('Mass: ', mass),
                  Methods().boldAndMediumText('Gender: ', gender),
                  Methods().boldAndMediumText('Hair Color: ', hairColor),
                  Methods().boldAndMediumText('Eye Color: ', eyeColor),
                  Methods().boldAndMediumText('Skin Color: ', skinColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
