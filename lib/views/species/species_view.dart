import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/species/species.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
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
  // late Future<SpeciesResults?> specie;
  int index = 0;

  @override
  void initState() {
    species = _api.fetchAllSpecies();
    // film = _api.fetchFilm(index);
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
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              var main = snapshot.data?[index];
              String name = main?.name ?? '';
              var errorUrl =
                  'https://starwars-visualguide.com/assets/img/placeholder.jpg';
              var imageUrl =
                  'https://starwars-visualguide.com/assets/img/species/${index + 1}.jpg';
              var image = CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) {
                  return Image.network(errorUrl);
                },
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
        }),
      ),
    );
  }
}
