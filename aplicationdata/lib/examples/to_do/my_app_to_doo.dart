import 'package:flutter/material.dart';
import 'package:aplicationdata/examples/to_do/to_do.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ToDo',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Text('To do list')
          ),
          body: new ListView(
              children: task.map(_buildItem).toList(),
          )
      )
    );
  }
}

Widget _buildItem(ToDo toDo) {
  return new ListTile(
      title: new Text(toDo.task),
      //subtitle: new Text('Capital: ${toDo.date}'),
      leading: new Icon(Icons.assignment_turned_in_outlined),
      onTap: (){
        print(toDo.task);
      },
  );
}