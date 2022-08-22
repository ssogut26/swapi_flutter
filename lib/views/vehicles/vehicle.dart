import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/vehicles/vehicles.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';

class VehicleResultsView extends StatefulWidget {
  final int index;
  final String name;
  final CachedNetworkImage image;
  const VehicleResultsView({
    required this.index,
    required this.image,
    required this.name,
    Key? key,
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
  late String name;

  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    vehicle = _apiService.fetchVehicle(widget.index);
    image = widget.image;
    name = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
        ),
      ),
      body: _getVehicleResult(),
    );
  }

  FutureBuilder<VehicleResult?> _getVehicleResult() {
    return FutureBuilder<VehicleResult?>(
      future: vehicle,
      builder: (context, snapshot) {
        VehicleResult? main = snapshot.data;
        String model = main?.model ?? '';
        String cargoCap = main?.cargo_capacity ?? '';
        String length = main?.length ?? '';
        String consumables = main?.consumables ?? '';
        String manufacturer = main?.manufacturer ?? '';
        String vehicleClass = main?.vehicle_class ?? '';
        String crew = main?.crew ?? '';
        String passengers = main?.passengers ?? '';
        String maxAtmospheringSpeed = main?.max_atmosphering_speed ?? '';
        String costInCredits = main?.cost_in_credits ?? '';
        return _vehicleProperties(
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
          costInCredits,
        );
      },
    );
  }

  Padding _vehicleProperties(
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
    return Padding(
      padding: ProjectPaddings.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Hero(
            tag: 'vehicle${widget.index}',
            child: Methods().cachedResultImageBox(context, image),
          ),
          Methods().dataContainer(
            context,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Methods().boldAndMediumText('Model: ', model),
                Methods().boldAndMediumText('Cargo Capacity: ', cargoCap),
                Methods().boldAndMediumText('Length: ', length),
                Methods().boldAndMediumText('Consumables: ', consumables),
                Methods().boldAndMediumText('Manufacturer: ', manufacturer),
                Methods().boldAndMediumText('Vehicle Class: ', vehicleClass),
                Methods().boldAndMediumText('Crew: ', crew),
                Methods().boldAndMediumText('Passengers: ', passengers),
                Methods()
                    .boldAndMediumText('Max Atmosphering Speed: ', maxAtmospheringSpeed),
                Methods().boldAndMediumText('Cost In Credits: ', costInCredits),
              ],
            ),
          )
        ],
      ),
    );
  }
}
