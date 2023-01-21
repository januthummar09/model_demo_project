import 'package:flutter/material.dart';
import 'package:model_demo_project/data/app_data/rick_data.dart';

import '../data/model/rick_data_model.dart';

class RickDataScreen extends StatefulWidget {
  const RickDataScreen({Key? key}) : super(key: key);

  @override
  State<RickDataScreen> createState() => _RickDataScreenState();
}

class _RickDataScreenState extends State<RickDataScreen> {
  RickDataModel? rickDataModel;
  @override
  void initState() {
    super.initState();
    rickDataModel = RickDataModel.from(RickData.rickDataDetail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RickData Screen"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Card(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("COUNT: ${rickDataModel!.info!.count}"),
                      Text("PAGES: ${rickDataModel!.info!.pages}"),
                      Text("NEXT: ${rickDataModel!.info!.next}"),
                      Text("PREV: ${rickDataModel!.info!.prev}"),
                    ],
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var item = rickDataModel!.results![index];
                  return Card(
                    color: Colors.cyan,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Id    :${rickDataModel!.results![index].id}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Name  :${item.name}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Status  :${item.status}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Species  :${item.species}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Type  :${item.type}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Gender  :${item.gender}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Image  :${item.image}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Url  :${item.url}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Created  :${item.created}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Name  :${item.origin!.name}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Url  :${item.origin!.url}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Url  :${item.episode!}\n",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 16,
                  );
                },
                itemCount: rickDataModel!.results!.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
