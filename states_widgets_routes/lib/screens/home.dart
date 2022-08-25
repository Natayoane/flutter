import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> selects = [false, false, false, false, false, false]; 

  Widget title = const Text("My Languages");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title),
      body: Column(children: [
        Wrap(
          spacing: 10,
          children: [
            ChoiceChip(
              label: Text("Android Native"), 
              selected: selects[0],
              onSelected: (value){
                setState(() {
                  selects[0] = value;
                });
              }
            ),
             ChoiceChip(
              label: Text("IOS Native"), 
              selected: selects[1],
              onSelected: (value){
                setState(() {
                  selects[1] = value;
                });
              }
            ),
          ],
        ),
        Expanded(child: ListView(children: buildItemsList()))
      ]),
    );
  }
  
  List<Widget> buildItemsList() {
    return [
      if(selects[0]) const Card(
        child: ListTile(
          leading: Icon(Icons.android),
          title: Text("Android Card"),
          subtitle: Text("Languages C, Java e Kotlin"),
        ),
      ),

     if(selects[1]) const Card(
        child: ListTile(
          leading: Icon(Icons.apple),
          title: Text("IOS Card"),
          subtitle: Text("Languages C, Java e Kotlin"),
        ),
      ),
    ];
  }
}

