import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/starships/starships.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class StarShipResultsView extends StatefulWidget {
  final int index;
  final FadeInImage image;
  const StarShipResultsView({
    required this.index,
    required this.image,
    Key? key,
    people,
  }) : super(
          key: key,
        );

  @override
  State<StarShipResultsView> createState() => _StarShipResultsViewState();
}

class _StarShipResultsViewState extends State<StarShipResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<StarShipResults?> starShip;
  late FadeInImage image;

  @override
  void initState() {
    starShip = _apiService.fetchStarship(widget.index);
    image = widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<StarShipResults?>(
        future: starShip,
        builder: (context, snapshot) {
          String name = snapshot.data?.name ?? '';
          String model = snapshot.data?.model ?? '';
          String MGLT = snapshot.data?.MGLT ?? '';
          String cargoCap = snapshot.data?.cargo_capacity ?? '';
          String hyperDriveRating = snapshot.data?.hyperdrive_rating ?? '';
          String lenght = snapshot.data?.length ?? '';
          String consumables = snapshot.data?.consumables ?? '';
          String manufacturer = snapshot.data?.manufacturer ?? '';
          String starshipClass = snapshot.data?.starship_class ?? '';
          String crew = snapshot.data?.crew ?? '';
          String passengers = snapshot.data?.passengers ?? '';
          String maxAtmospheringSpeed = snapshot.data?.max_atmosphering_speed ?? '';
          String costInCredits = snapshot.data?.cost_in_credits ?? '';
          return SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Methods().fadeInResultImageBox(context, image),
                Text('Model: $model'),
                Text('MGLT: $MGLT'),
                Text('Cargo Capacity: $cargoCap'),
                Text('Hyper Drive Rating: $hyperDriveRating'),
                Text('Lenght: $lenght'),
                Text('Consumables: $consumables'),
                Text('Manufacturer: $manufacturer'),
                Text('Starship Class: $starshipClass'),
                Text('Crew: $crew'),
                Text('Passengers: $passengers'),
                Text('Max Atmosphering Speed: $maxAtmospheringSpeed'),
                Text('Cost In Credits: $costInCredits'),
              ],
            ),
          );
        },
      ),
    );
  }
}
