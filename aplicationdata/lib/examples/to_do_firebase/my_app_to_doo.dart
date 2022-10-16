import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:aplicationdata/examples/to_do_firebase/to_do.dart';
import 'package:firebase_database/firebase_database.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'To Do';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: new ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String actualTask = "";
  List<ToDo> lista = task.toList();

  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    getData();
    final listaData = lista;
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your task',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              actualTask = value;
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  task.add(new ToDo(task: actualTask));
                  setState(() {});
                }
              },
              child: const Text('Submit'),
            ),
          ),
          ListBody(
            children: listaData.map(_buildItem).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(ToDo toDo) {
    return new ListTile(
      title: new Text(toDo.task),
      //leading: new Icon(Icons.assignment_turned_in_outlined),
      trailing: new IconButton(
        onPressed: () {
          task.remove(toDo);
          setState(() {});
        },
        icon: Icon(Icons.delete),
        color: Colors.amber,
      ),
      onTap: () {
        print(toDo.task);
      },
    );
  }

  void getData() async {
    final snapshot = await ref.child('').get();
    List<ToDo> lis = [];
    if (snapshot.exists) {
      for (var value in snapshot.children) {
        lis.add(new ToDo(task: value.value.toString()));
      }
      //lis.add(new ToDo(task: snapshot.value.toString()));
    } else {
      print('No data available.');
    }
    lista = lis;
    setState(() {});
    //final lista = task;
  }

  void setData() async {}
}
