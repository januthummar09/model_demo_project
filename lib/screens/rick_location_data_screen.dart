import 'package:flutter/material.dart';

import '../data/app_data/rick_location_data.dart';
import '../data/model/rick_location_model.dart';

class RickLocationDataScreen extends StatefulWidget {
  const RickLocationDataScreen({Key? key}) : super(key: key);

  @override
  State<RickLocationDataScreen> createState() => _RickLocationDataScreenState();
}

class _RickLocationDataScreenState extends State<RickLocationDataScreen> {
  RickLocationModel? rickLocationModel;
  @override
  void initState() {
    super.initState();
    rickLocationModel =
        RickLocationModel.from(RickLocationData.rickLocationDetail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RickLocationData Screen"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              ListView.separated(
                itemCount: rickLocationModel!.locationData!.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.cyan,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Id.          :${rickLocationModel!.locationData![0].id}",
                          style: const TextStyle(fontSize: 17),
                        ),
                        Text(
                          "Name          :${rickLocationModel!.locationData![index].name}",
                          style: const TextStyle(fontSize: 17),
                        ),
                        Text(
                          "Type          :${rickLocationModel!.locationData![index].type}",
                          style: const TextStyle(fontSize: 17),
                        ),
                        Text(
                          "Resident      :${rickLocationModel!.locationData![index].residents}",
                          style: const TextStyle(fontSize: 17),
                        ),
                        Text(
                          "Url           :${rickLocationModel!.locationData![index].url}",
                          style: const TextStyle(fontSize: 17),
                        ),
                        Text(
                          "Created      :${rickLocationModel!.locationData![index].created}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
