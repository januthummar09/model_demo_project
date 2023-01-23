import 'package:flutter/material.dart';

import '../data/app_data/multiple_data.dart';
import '../data/model/mutiple_id_model.dart';

class MultipleModelScreen extends StatefulWidget {
  const MultipleModelScreen({Key? key}) : super(key: key);

  @override
  State<MultipleModelScreen> createState() => _MultipleModelScreenState();
}

class _MultipleModelScreenState extends State<MultipleModelScreen> {
  MultipleDataModel? multipleDataModel;
  @override
  void initState() {
    super.initState();
    multipleDataModel = MultipleDataModel.from(MultipleData.multipleData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.cyan,
                  child: Column(
                    children: [
                      Text(
                        "Id :${multipleDataModel!.multipleList![index].id}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Name :${multipleDataModel!.multipleList![index].name}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "species :${multipleDataModel!.multipleList![index].species}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "status :${multipleDataModel!.multipleList![index].status}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "type :${multipleDataModel!.multipleList![index].type}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "gender :${multipleDataModel!.multipleList![index].gender}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "origin :${multipleDataModel!.multipleList![index].origin}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "location :${multipleDataModel!.multipleList![index].location}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Image.network(
                        "${multipleDataModel!.multipleList![index].image}",
                        height: 100,
                      ),
                      Text(
                        "created :${multipleDataModel!.multipleList![index].created}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "url :${multipleDataModel!.multipleList![index].url}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "episode :${multipleDataModel!.multipleList![index].episode}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: multipleDataModel!.multipleList!.length)
        ],
      ),
    );
  }
}
