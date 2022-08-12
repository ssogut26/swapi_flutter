import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/vehicles/vehicles.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class VehicleResultsView extends StatefulWidget {
  final int index;
  final CachedNetworkImage image;
  const VehicleResultsView({
    required this.index,
    required this.image,
    Key? key,
    people,
  }) : super(
          key: key,
        );

  @override
  State<VehicleResultsView> createState() => _VehicleResultsViewState();
}

class _VehicleResultsViewState extends State<VehicleResultsView> {
  final NetworkManager _apiService = NetworkManager.instance;
  late Future<VehicleResult?> vehicle;
  late CachedNetworkImage image;

  @override
  void initState() {
    vehicle = _apiService.fetchVehicle(widget.index);
    image = widget.image;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<VehicleResult?>(
        future: vehicle,
        builder: (context, snapshot) {
          String name = snapshot.data?.name ?? '';
          String model = snapshot.data?.model ?? '';
          String cargoCap = snapshot.data?.cargo_capacity ?? '';
          String lenght = snapshot.data?.length ?? '';
          String consumables = snapshot.data?.consumables ?? '';
          String manufacturer = snapshot.data?.manufacturer ?? '';
          String vehicleClass = snapshot.data?.vehicleClass ?? '';
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
                Methods().cachedResultImageBox(context, image),
                Text('Model: $model'),
                Text('Cargo Capacity: $cargoCap'),
                Text('Lenght: $lenght'),
                Text('Consumables: $consumables'),
                Text('Manufacturer: $manufacturer'),
                Text('Vehicle Class: $vehicleClass'),
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
