import 'package:flutter/material.dart';
import 'package:model_demo_project/data/app_data/student_list_data.dart';

import '../data/model/common_model.dart';

class StudentModelDataScreen extends StatefulWidget {
  const StudentModelDataScreen({Key? key}) : super(key: key);

  @override
  State<StudentModelDataScreen> createState() => _StudentModelDataScreenState();
}

class _StudentModelDataScreenState extends State<StudentModelDataScreen> {
  List name = ["jankithummar", "thummar", "janki", "as"];
  CommonModel? commonModel;
  @override
  void initState() {
    super.initState();
    commonModel = CommonModel.fromJson(StudentListData.listData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff1F4C6B),
        title: const Text("STUDENT DATA"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          children: [
            Card(
              color: const Color(0xffF5F4F8),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Class time: ${commonModel!.classTime!}",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F4C6B)),
                    ),
                    Text(
                      "Faculty name:${commonModel!.facultyName}",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F4C6B)),
                    ),
                    Text(
                      "course :${commonModel!.course}",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F4C6B)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              itemCount: commonModel!.studentList!.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemBuilder: (context, index) {
                var stdData = commonModel!.studentList![index];
                return Card(
                  color: index % 2 == 0
                      ? const Color(0xff1F4C6B)
                      : const Color(0xffF5F4F8),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name :${stdData.name}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: index % 2 == 1
                                ? const Color(0xff1F4C6B)
                                : const Color(0xffF5F4F8),
                          ),
                        ),
                        Text(
                          "SurName :${stdData.surname}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: index % 2 == 1
                                ? const Color(0xff1F4C6B)
                                : const Color(0xffF5F4F8),
                          ),
                        ),
                        Text(
                          "IdNumber :${stdData.idNumber}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: index % 2 == 1
                                ? const Color(0xff1F4C6B)
                                : const Color(0xffF5F4F8),
                          ),
                        ),
                        Text(
                          "Age :${stdData.age}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: index % 2 == 1
                                ? const Color(0xff1F4C6B)
                                : const Color(0xffF5F4F8),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
