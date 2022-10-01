import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/planets/planets.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/planets/planet_view.dart';

class PlanetsView extends StatefulWidget {
  PlanetsView({super.key, required this.page});
  int page = 1;

  @override
  State<PlanetsView> createState() => _PlanetsViewState();
}

class _PlanetsViewState extends State<PlanetsView> {
  final _api = NetworkManager.instance;
  late Future<List<PlanetResults>?> planets;
  late int page;

  @override
  void initState() {
    page = widget.page;
    planets = _api.fetchPlanets(page);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planets'),
      ),
      body: fetchPlanets(),
    );
  }

  FutureBuilder<List<PlanetResults>?> fetchPlanets() {
    return FutureBuilder<List<PlanetResults>?>(
      future: planets,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return LayoutBuilder(
            builder: (context, constrains) {
              return Column(
                children: [
                  Expanded(
                    child: planetList(context, snapshot),
                  ),
                  bottomPageEditor(context),
                ],
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  ListView planetList(
    BuildContext context,
    AsyncSnapshot<List<PlanetResults>?> snapshot,
  ) {
    return ListView.builder(
      shrinkWrap: true,
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(8),
      physics: const BouncingScrollPhysics(),
      itemCount: snapshot.data?.length,
      itemBuilder: (context, index) {
        final main = snapshot.data?[index];
        final name = main?.name ?? '';
        final url = main?.url?.substring(30) ?? '';
        index = int.parse(url.split('/')[0]);
        final imageUrl = '${ConstantTexts().planetsBaseUrl}$index.jpg';
        final image = Methods().cachedImage(imageUrl);
        return planetCard(context, name, index, image);
      },
    );
  }

  GestureDetector planetCard(
    BuildContext context,
    String name,
    int index,
    CachedNetworkImage image,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PlanetResultsView(
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
              tag: index,
              child: Methods().cachedPhotoBox(image),
            ),
            Text(
              name,
              textScaleFactor: 1,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Divider(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Container bottomPageEditor(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_sharp),
            onPressed: () {
              try {
                if (page != 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PlanetsView(page: page - 1);
                      },
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(ConstantTexts().firstPage),
                    ),
                  );
                }
              } catch (e) {
                if (kDebugMode) print(e);
              }
            },
          ),
          DropdownButton(
            items: List.generate(
              6,
              (index) => DropdownMenuItem(
                value: index + 1,
                child: Text((index + 1).toString()),
              ),
            ),
            onChanged: (value) {
              setState(() {
                page = value as int;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PlanetsView(page: page);
                  },
                ),
              );
            },
            value: page,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_sharp),
            onPressed: () {
              try {
                if (page < 6) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PlanetsView(page: page + 1);
                      },
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(ConstantTexts().lastPage),
                    ),
                  );
                }
              } catch (e) {
                if (kDebugMode) print(e);
              }
            },
          ),
        ],
      ),
    );
  }
}
