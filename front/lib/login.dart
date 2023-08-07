import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _id = ''; //입력된 아이디 저장
  String _pw = ''; //입력된 비밀번호 저장

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 123, 0, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                    child: Text('로그인'), 
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(13, 45, 16, 53),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // inputfielde8H (71:1116)
                    margin: EdgeInsets.fromLTRB(0, 0, 3, 16),
                    padding: EdgeInsets.fromLTRB(16, 18, 16, 17),
                    width: 343,
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '아이디',
                    ),
                  ),
                  Container(
                    // inputfielde8H (71:1116)
                    margin: EdgeInsets.fromLTRB(0, 0, 3, 16),
                    padding: EdgeInsets.fromLTRB(16, 18, 16, 17),
                    width: 343,
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '비밀번호',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
