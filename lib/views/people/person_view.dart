import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class PeopleResultsView extends StatefulWidget {
  final int index;
  final String name;
  final CachedNetworkImage image;
  const PeopleResultsView({
    required this.index,
    required this.image,
    required this.name,
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
        String height = snapshot.data?.height ?? '';
        String birthYear = snapshot.data?.birth_year ?? '';
        String mass = snapshot.data?.mass ?? '';
        String gender = snapshot.data?.gender ?? '';
        String hairColor = snapshot.data?.hair_color ?? '';
        String skinColor = snapshot.data?.skin_color ?? '';
        String eyeColor = snapshot.data?.eye_color ?? '';

        if (snapshot.hasData) {
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
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  SingleChildScrollView getPeopleProperty(
    BuildContext context,
    String birthYear,
    String height,
    String mass,
    String gender,
    String hairColor,
    String skinColor,
    String eyeColor,
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
              tag: 'people${widget.index}',
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
          ],
        ),
      ),
    );
  }
}
