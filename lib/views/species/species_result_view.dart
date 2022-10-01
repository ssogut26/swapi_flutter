import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/species/species.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class SpeciesResultsView extends StatefulWidget {
  const SpeciesResultsView({
    required this.index,
    required this.image,
    required this.name,
    super.key,
  });
  final int index;
  final String name;
  final CachedNetworkImage image;

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
        final name = snapshot.data?.name ?? '';
        final height = snapshot.data?.average_height ?? '';
        final averageLifeSpan = snapshot.data?.average_lifespan ?? '';
        final classification = snapshot.data?.classification ?? '';
        final eyeColors = snapshot.data?.eye_colors ?? '';
        final hairColors = snapshot.data?.hair_colors ?? '';
        final language = snapshot.data?.language ?? '';
        return speciesProperties(
          context,
          name,
          averageLifeSpan,
          height,
          classification,
          eyeColors,
          hairColors,
          language,
        );
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
    String language,
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
              tag: 'species${widget.index}',
              child: Methods().cachedResultImageBox(context, image),
            ),
            Expanded(
              flex: 65,
              child: Methods().dataContainer(
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
            ),
          ],
        ),
      ),
    );
  }
}
