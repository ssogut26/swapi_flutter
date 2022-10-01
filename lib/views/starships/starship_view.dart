import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/starships/starships.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class StarShipResultsView extends StatefulWidget {
  const StarShipResultsView({
    required this.index,
    required this.image,
    required this.name,
    super.key,
  });
  final int index;
  final CachedNetworkImage image;
  final String name;

  @override
  State<StarShipResultsView> createState() => _StarShipResultsViewState();
}

class _StarShipResultsViewState extends State<StarShipResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<StarShipResults?> starShip;
  late CachedNetworkImage image;
  late String name;

  @override
  void initState() {
    starShip = _apiService.fetchStarship(widget.index);
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
      body: getStarShipResults(),
    );
  }

  FutureBuilder<StarShipResults?> getStarShipResults() {
    return FutureBuilder<StarShipResults?>(
      future: starShip,
      builder: (context, snapshot) {
        final name = snapshot.data?.name ?? '';
        final model = snapshot.data?.model ?? '';
        final MGLT = snapshot.data?.MGLT ?? '';
        final cargoCap = snapshot.data?.cargo_capacity ?? '';
        final hyperDriveRating = snapshot.data?.hyperdrive_rating ?? '';
        final length = snapshot.data?.length ?? '';
        final consumables = snapshot.data?.consumables ?? '';
        final manufacturer = snapshot.data?.manufacturer ?? '';
        final starshipClass = snapshot.data?.starship_class ?? '';
        final crew = snapshot.data?.crew ?? '';
        final passengers = snapshot.data?.passengers ?? '';
        final maxAtmospheringSpeed = snapshot.data?.max_atmosphering_speed ?? '';
        final costInCredits = snapshot.data?.cost_in_credits ?? '';
        return starShipProperties(
          name,
          context,
          model,
          MGLT,
          cargoCap,
          hyperDriveRating,
          length,
          consumables,
          manufacturer,
          starshipClass,
          crew,
          passengers,
          maxAtmospheringSpeed,
          costInCredits,
        );
      },
    );
  }

  SingleChildScrollView starShipProperties(
    String name,
    BuildContext context,
    String model,
    String MGLT,
    String cargoCap,
    String hyperDriveRating,
    String length,
    String consumables,
    String manufacturer,
    String starshipClass,
    String crew,
    String passengers,
    String maxAtmospheringSpeed,
    String costInCredits,
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
              tag: 'starship${widget.index}',
              child: Methods().cachedResultImageBox(context, image),
            ),
            Methods().dataContainer(
              context,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Methods().boldAndMediumText('Model: ', model),
                  Methods().boldAndMediumText('MGLT: ', MGLT),
                  Methods().boldAndMediumText('Cargo Capacity: ', cargoCap),
                  Methods().boldAndMediumText('Hyper Drive Rating: ', hyperDriveRating),
                  Methods().boldAndMediumText('Length: ', length),
                  Methods().boldAndMediumText('Consumables: ', consumables),
                  Methods().boldAndMediumText('Manufacturer: ', manufacturer),
                  Methods().boldAndMediumText('Starship Class: ', starshipClass),
                  Methods().boldAndMediumText('Crew: ', crew),
                  Methods().boldAndMediumText('Passengers: ', passengers),
                  Methods().boldAndMediumText(
                    'Max Atmosphering Speed: ',
                    maxAtmospheringSpeed,
                  ),
                  Methods().boldAndMediumText('Cost In Credits: ', costInCredits),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
