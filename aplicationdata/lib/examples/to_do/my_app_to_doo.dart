import 'dart:math';

import 'package:flutter/material.dart';
import 'package:aplicationdata/examples/to_do/to_do.dart';

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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
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
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  task.add(new ToDo(task: actualTask));
                  setState(() {});
                }
              },
              child: const Text('Submit'),
            ),
          ),
          ListBody(
            children: task.map(_buildItem).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(ToDo toDo) {
    return new ListTile(
      title: new Text(toDo.task),
      leading: new Icon(Icons.assignment_turned_in_outlined),
      onTap: () {
        print(toDo.task);
        task.remove(toDo);
        setState(() {});
      },
    );
  }

}