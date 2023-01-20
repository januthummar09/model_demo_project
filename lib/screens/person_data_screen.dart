import 'package:flutter/material.dart';
import 'package:model_demo_project/data/app_data/person_data.dart';

import '../data/model/person_data_model.dart';

class PersonDataScreen extends StatefulWidget {
  const PersonDataScreen({Key? key}) : super(key: key);

  @override
  State<PersonDataScreen> createState() => _PersonDataScreenState();
}

class _PersonDataScreenState extends State<PersonDataScreen> {
  PersonDataModel? personDataModel;
  @override
  void initState() {
    super.initState();
    personDataModel = PersonDataModel.fromJson(PersonData.personDetail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Text("Name :${personDataModel!.personData1!.firstName}"),
                Text("SurName:${personDataModel!.personData1!.lastName}"),
                Text("Age:${personDataModel!.personData1!.age}"),
                Text("City:${personDataModel!.personData1!.address!.city}"),
                Text("State:${personDataModel!.personData1!.address!.state}"),
                Text(
                    "Type 1:${personDataModel!.personData1!.phoneNumberList![0].type1}"),
                Text(
                    "Type 2:${personDataModel!.personData1!.phoneNumberList![1].type1}"),
                Text(
                    "Mobile 1:${personDataModel!.personData1!.phoneNumberList![0].no}"),
                Text(
                    "Mobile 2:${personDataModel!.personData1!.phoneNumberList![1].no}"),
                ListView.separated(
                  itemCount:
                      personDataModel!.personData1!.phoneNumberList!.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.red,
                      child: Column(
                        children: [
                          Text(
                              "Type:${personDataModel!.personData1!.phoneNumberList![index].type1}"),
                          Text(
                              "mobileNumber:${personDataModel!.personData1!.phoneNumberList![index].no}"),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                ),
                Text(
                    "Pincode:${personDataModel!.personData1!.address!.pincode}")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
