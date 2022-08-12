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
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                var url = snapshot.data?[index].url?.substring(29) ?? '';
                index = int.parse(url.split('/')[0]);
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
        itemCount: snapshot.data?.length ?? 0,
        itemBuilder: (context, index) {
          var main = snapshot.data?[index];
          var name = main?.name ?? '';
          var url = snapshot.data?[index].url?.substring(29) ?? '';
          index = int.parse(url.split('/')[0]);
          var imageUrl = '${ConstantTexts().charactersBaseUrl}$index.jpg';
          CachedNetworkImage image = CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: imageUrl,
            placeholder: (context, url) => SizedBox(
              child: Image.asset('assets/images/yoda.gif'),
            ),
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          );
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
            builder: (context) => PeopleResultsView(
              index: index,
              image: image,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 3,
          child: Row(
            children: [
              Methods().cachedPhotoBox(image),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$name',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
