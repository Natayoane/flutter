import 'package:flutter/material.dart';
import 'package:states_widgets_routes/models/language.dart';
// import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Language> languages = [
    Language("Android Native", "Languages C, Java and Kotlin"),
    Language("Android Native", "Languages C, Java and Kotlin"),
    Language("Android Native", "Languages C, Java and Kotlin"),
    Language("Android Native", "Languages C, Java and Kotlin"),
    Language("Android Native", "Languages C, Java and Kotlin"),
  ]; 

  Widget title = const Text("My Languages");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title),
      body: Column(children: [
        Wrap(
          spacing: 10,
          children:  buildChoices(),
        ),
        Expanded(child: ListView(children: buildItemsList()))
      ]),
    );
  }
  
  List<ChoiceChip> buildChoices() {
    return languages.map((l) => ChoiceChip(
      label: Text(l.title), 
      selected: l.selected,
      onSelected: (value) => setState(() {
        l.selected = value;
      }))).toList(); 
  
  }

  List<Widget> buildItemsList() {
    return
      languages.where((l)=> l.selected)
      .map((l) => Card(
        child: ListTile(
          leading: Icon(l.icon),
          title: Text(l.title),
          subtitle: Text(l.subtitle),
        ),
      )).toList();
  }
}

