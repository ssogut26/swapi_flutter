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
      body: getVehicleResult(),
    );
  }

  FutureBuilder<VehicleResult?> getVehicleResult() {
    return FutureBuilder<VehicleResult?>(
      future: vehicle,
      builder: (context, snapshot) {
        VehicleResult? main = snapshot.data;
        String name = main?.name ?? '';
        String model = main?.model ?? '';
        String cargoCap = main?.cargo_capacity ?? '';
        String length = main?.length ?? '';
        String consumables = main?.consumables ?? '';
        String manufacturer = main?.manufacturer ?? '';
        String vehicleClass = main?.vehicleClass ?? '';
        String crew = main?.crew ?? '';
        String passengers = main?.passengers ?? '';
        String maxAtmospheringSpeed = main?.max_atmosphering_speed ?? '';
        String costInCredits = main?.cost_in_credits ?? '';
        return vehicleProperties(
            name,
            context,
            model,
            cargoCap,
            length,
            consumables,
            manufacturer,
            vehicleClass,
            crew,
            passengers,
            maxAtmospheringSpeed,
            costInCredits);
      },
    );
  }

  SingleChildScrollView vehicleProperties(
      String name,
      BuildContext context,
      String model,
      String cargoCap,
      String length,
      String consumables,
      String manufacturer,
      String vehicleClass,
      String crew,
      String passengers,
      String maxAtmospheringSpeed,
      String costInCredits) {
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
          Text('Length: $length'),
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
  }
}
