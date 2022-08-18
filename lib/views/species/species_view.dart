import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/species/species.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/species/species_result_view.dart';

class SpeciesView extends StatefulWidget {
  const SpeciesView({Key? key}) : super(key: key);

  @override
  State<SpeciesView> createState() => _SpeciesViewState();
}

class _SpeciesViewState extends State<SpeciesView> {
  final _api = NetworkManager.instance;
  late Future<List<SpeciesResult>?> species;

  @override
  void initState() {
    species = _api.fetchAllSpecies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Species'),
      ),
      body: FutureBuilder<List<SpeciesResult>?>(
        future: species,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                var main = snapshot.data?[index];
                String name = main?.name ?? '';
                var errorUrl = ConstantTexts().errorUrl;
                var imageUrl = '${ConstantTexts().speciesBaseUrl}${index + 1}.jpg';

                CachedNetworkImage image = Methods().cachedImage(
                  imageUrl,
                );
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SpeciesResultsView(
                        index: index,
                        image: image,
                      );
                    }));
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Methods().cachedPhotoBox(image),
                        Text(
                          name,
                          style:
                              const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
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
