import 'package:flutter/material.dart';
import 'package:model_demo_project/data/app_data/customer_bank_list.dart';

import '../data/model/common_bank_model.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  CommonBankModel? commonBankModel;
  @override
  void initState() {
    super.initState();
    commonBankModel = CommonBankModel.fromJson(CustomerBankList.bankData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text(
            "data",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "BANK NAME:${commonBankModel!.bankName}",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "BRANCH NAME:${commonBankModel!.branch}",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "IFSC CODE:${commonBankModel!.ifscCode}",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: commonBankModel!.customerData!.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.amber,
              child:
                  commonBankModel!.customerData![index].customerName == "janki"
                      ? SizedBox()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CUSTOMER NAME : ${commonBankModel!.customerData![index].customerName}",
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "ACCOUNT NUMBER : ${commonBankModel!.customerData![index].accountNumber}",
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "ACCOUNT TYPE : ${commonBankModel!.customerData![index].accountType}",
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "MOBILE NUMBER : ${commonBankModel!.customerData![index].mobileNumber}",
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "TOTAL BALANCE : ${commonBankModel!.customerData![index].totalBalance}",
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
            ),
          )
        ],
      ),
    );
  }
}
