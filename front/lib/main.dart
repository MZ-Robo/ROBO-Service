import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:front/home.dart';
import 'package:front/login.dart';
// import 'package:front/look.dart';
import 'package:front/lookAround.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: LookAround(),
      ),
    );
  }
}
