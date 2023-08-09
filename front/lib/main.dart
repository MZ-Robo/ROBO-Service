import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:front/home.dart';
import 'package:front/login.dart';
import 'package:front/loading.dart';
import 'package:front/portfolioInput.dart';
import 'package:front/portfolioResult.dart';

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
        body: HomeScreen(),
      ),
    );
  }
}
