import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/vehicles/vehicles.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/vehicles/vehicle.dart';

class VehiclesView extends StatefulWidget {
  const VehiclesView({Key? key}) : super(key: key);

  @override
  State<VehiclesView> createState() => _VehiclesViewState();
}

class _VehiclesViewState extends State<VehiclesView> {
  final _api = NetworkManager.instance;
  late Future<List<VehicleResult>?> vehicles;
  int index = 0;

  @override
  void initState() {
    vehicles = _api.fetchVehicles();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicles'),
      ),
      body: _getAllVehicles(),
    );
  }

  FutureBuilder<List<VehicleResult>?> _getAllVehicles() {
    return FutureBuilder<List<VehicleResult>?>(
      future: vehicles,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              var main = snapshot.data?[index];
              String name = main?.name ?? '';
              var url = snapshot.data?[index].url?.substring(31) ?? '';
              index = int.parse(url.split('/')[0]);
              String imageUrl = '${ConstantTexts().vehicleBaseUrl}$index.jpg';
              CachedNetworkImage image = Methods().cachedImage(
                imageUrl,
              );
              return _vehicleCard(context, name, index, image);
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }

  GestureDetector _vehicleCard(
      BuildContext context, String name, int index, CachedNetworkImage image) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return VehicleResultsView(
                name: name,
                index: index,
                image: image,
              );
            },
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: 'vehicle$index',
              child: Methods().cachedPhotoBox(image),
            ),
            Text(
              name,
              textScaleFactor: 1.0,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const Divider(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
