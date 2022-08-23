import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/people/person_view.dart';

class PeoplesView extends StatefulWidget {
  const PeoplesView({Key? key}) : super(key: key);

  @override
  State<PeoplesView> createState() => _PeoplesViewState();
}

class _PeoplesViewState extends State<PeoplesView> {
  final _api = NetworkManager.instance;
  late Future<List<PeopleResults>?> peoples;
  int index = 0;

  @override
  void initState() {
    peoples = _api.fetchPeople();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peoples'),
      ),
      body: fetchPeople(),
    );
  }

  FutureBuilder<List<PeopleResults>?> fetchPeople() {
    return FutureBuilder<List<PeopleResults>?>(
      future: peoples,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    peopleList(context, snapshot),
                  ],
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  SizedBox peopleList(
      BuildContext context, AsyncSnapshot<List<PeopleResults>?> snapshot) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        itemCount: snapshot.data?.length,
        itemBuilder: (context, index) {
          PeopleResults? main = snapshot.data?[index];
          String name = main?.name ?? '';
          String url = main?.url?.substring(29) ?? '';
          index = int.parse(url.split('/')[0]);
          String imageUrl = '${ConstantTexts().charactersBaseUrl}$index.jpg';
          CachedNetworkImage image = Methods().cachedImage(imageUrl);
          return peopleCard(image, name, index);
        },
      ),
    );
  }

  GestureDetector peopleCard(CachedNetworkImage image, String? name, index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PeopleResultsView(
                name: name ?? '',
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
              name ?? '',
              textScaleFactor: 1.0,
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
}
