import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:swapi_flutter/models/peoples/peoples.dart';
import 'package:swapi_flutter/services/network/network_manager.dart';
import 'package:swapi_flutter/utils/constants.dart';
import 'package:swapi_flutter/utils/reusableMethods.dart';
import 'package:swapi_flutter/views/people/person_view.dart';

class PeoplesView extends StatefulWidget {
  int page = 1;
  PeoplesView({Key? key, required this.page}) : super(key: key);

  @override
  State<PeoplesView> createState() => _PeoplesViewState();
}

class _PeoplesViewState extends State<PeoplesView> {
  final _api = NetworkManager.instance;
  late Future<List<PeopleResults>?> peoples;
  int index = 0;
  late int page;

  @override
  void initState() {
    page = widget.page;
    peoples = _api.fetchPeople(page);
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
          return LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  Expanded(
                    child: peopleList(context, snapshot),
                  ),
                  bottomPageEditor(context),
                ],
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const Center(child: CircularProgressIndicator());
      },
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
                        return PeoplesView(page: page - 1);
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
                9,
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
                      return PeoplesView(page: page);
                    },
                  ),
                );
              },
              value: page),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_sharp),
            onPressed: () {
              try {
                if (page < 9) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PeoplesView(page: page + 1);
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

  SingleChildScrollView peopleList(
      BuildContext context, AsyncSnapshot<List<PeopleResults>?> snapshot) {
    return SingleChildScrollView(
      child: ListView.builder(
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(8),
        physics: const BouncingScrollPhysics(),
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
        child: Column(
          children: [
            Row(
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
          ],
        ),
      ),
    );
  }
}
