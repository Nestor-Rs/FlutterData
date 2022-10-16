import 'dart:async';

import 'package:aplicationdata/examples/to_do_firebase/my_app_to_doo.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:aplicationdata/firebase_options.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(new MyApp());

}

