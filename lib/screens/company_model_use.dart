import 'package:flutter/material.dart';

import '../data/app_data/company_data.dart';
import '../data/model/company_model.dart';

class CompanyModelUse extends StatefulWidget {
  const CompanyModelUse({Key? key}) : super(key: key);

  @override
  State<CompanyModelUse> createState() => _CompanyModelUseState();
}

class _CompanyModelUseState extends State<CompanyModelUse> {
  CompanyModel? companyModel;

  List name = ["janki", "kajal", "kinjal", "nency"];
  @override
  void initState() {
    super.initState();
    companyModel = CompanyModel.fromJson(CompanyData.companyDataList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CompanyModel screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("city:${companyModel!.city}"),
          Text("company name: ${companyModel!.companyName}"),
          Text(
              "applicationDeveloper :${companyModel!.applicationDeveloper!.name}"),
          Text(
              "applicationDeveloper :${companyModel!.applicationDeveloper!.devloper}"),
          Text(
              "applicationDeveloper :${companyModel!.applicationDeveloper!.salary}"),
          Text("backendDeveloper :${companyModel!.backendDeveloper!.name}"),
          Text("backendDeveloper :${companyModel!.backendDeveloper!.devloper}"),
          Text("backendDeveloper :${companyModel!.backendDeveloper!.salary}"),
          Text("frontendDeveloper :${companyModel!.frontendDeveloper!.name}"),
          Text(
              "frontendDeveloper :${companyModel!.frontendDeveloper!.devloper}"),
          Text("frontendDeveloper :${companyModel!.frontendDeveloper!.salary}"),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: name.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                color: Colors.yellow,
                width: double.infinity,
                child: Text("Name:${name[index]}"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
                      // "data:${companyModel!.backendDeveloper!["devloper"]}"),

