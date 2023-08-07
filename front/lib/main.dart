import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:front/login.dart';

void main() {
  runApp(LoginScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: LoginScreen(),
      ),
    );
  }
}
