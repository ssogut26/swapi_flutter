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
  // late Future<VehiclesResult?> vehicle;
  int index = 0;

  @override
  void initState() {
    vehicles = _api.fetchVehicles();
    // film = _api.fetchFilm(index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicles'),
      ),
      body: FutureBuilder<List<VehicleResult>?>(
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
                String errorUrl = ConstantTexts().errorUrl;
                String imageUrl = '${ConstantTexts().vehicleBaseUrl}$index.jpg';
                CachedNetworkImage image = Methods().cachedImage(errorUrl, imageUrl);
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return VehicleResultsView(
                        index: index,
                        image: image,
                      );
                    }));
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Row(
                      children: [
                        Methods().cachedPhotoBox(image),
                        Text(name),
                        const Divider(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        }),
      ),
    );
  }
}
