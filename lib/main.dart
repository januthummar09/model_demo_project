import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_demo_project/screens/bank_model_data_screen.dart';
import 'package:model_demo_project/screens/company_model_use.dart';
import 'package:model_demo_project/screens/student_model_data_screen.dart';

void main() {
  runApp(const MyApp());
}

class ListItem {
  String title;
  Widget child;

  ListItem({required this.title, required this.child});
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ListItem> items = [
    ListItem(
      title: "StudentModelDataScreen",
      child: const StudentModelDataScreen(),
    ),
    ListItem(
      title: "BankModelDataScreen",
      child: const BankModelDataScreen(),
    ),
    ListItem(
      title: "CompanyModelUse",
      child: const CompanyModelUse(),
    ),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(items[index].title, textAlign: TextAlign.center),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: ((BuildContext context) {
                      return items[index].child;
                    }),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
