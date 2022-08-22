import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/species/species.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class SpeciesResultsView extends StatefulWidget {
  final int index;
  final String name;
  final CachedNetworkImage image;
  const SpeciesResultsView({
    required this.index,
    required this.image,
    required this.name,
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
  late String name;
  @override
  void initState() {
    species = _apiService.fetchSpecies(widget.index);
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
      body: getSpeciesResults(),
    );
  }

  FutureBuilder<SpeciesResult?> getSpeciesResults() {
    return FutureBuilder<SpeciesResult?>(
      future: species,
      builder: (context, snapshot) {
        String name = snapshot.data?.name ?? '';
        String height = snapshot.data?.average_height ?? '';
        String averageLifeSpan = snapshot.data?.average_lifespan ?? '';
        String classification = snapshot.data?.classification ?? '';
        String eyeColors = snapshot.data?.eye_colors ?? '';
        String hairColors = snapshot.data?.hair_colors ?? '';
        String language = snapshot.data?.language ?? '';
        return speciesProperties(context, name, averageLifeSpan, height, classification,
            eyeColors, hairColors, language);
      },
    );
  }

  SingleChildScrollView speciesProperties(
      BuildContext context,
      String name,
      String averageLifeSpan,
      String height,
      String classification,
      String eyeColors,
      String hairColors,
      String language) {
    return SingleChildScrollView(
      child: Padding(
        padding: ProjectPaddings.pagePadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          Hero(
              tag: 'species${widget.index}',
              child: Methods().cachedResultImageBox(context, image)),
          Methods().dataContainer(
            context,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Methods().boldAndMediumText('Name: ', name),
                Methods().boldAndMediumText('Average Life Span: ', averageLifeSpan),
                Methods().boldAndMediumText('Height: ', height),
                Methods().boldAndMediumText('Classification: ', classification),
                Methods().boldAndMediumText('Eye Colors: ', eyeColors),
                Methods().boldAndMediumText('Hair Colors: ', hairColors),
                Methods().boldAndMediumText('Language: ', language),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
