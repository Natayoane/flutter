import 'package:all_persistences_types/utils/customWidgets.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  Widget title = const Text("Flutter Persistencia");

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(title: title),
  
      body: Column(children: [
        ListTile(
          leading: buildSvgIcon("images/sqlite-icon.svg"),
          title: const Text("SQlite"),
          subtitle: const Text("data"),

        )
      ]),
    );
  }
}