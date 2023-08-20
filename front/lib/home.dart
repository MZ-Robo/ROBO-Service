import 'dart:math';

import 'package:flutter/material.dart';
import 'signup.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _whatIs() {
    return Container(
      width: 203,
      height: 46,
      margin: EdgeInsets.fromLTRB(40, 10, 0, 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  Widget _plusCircle() {
    return Container(
      width: 41,
      height: 41,
      decoration: ShapeDecoration(
        color: Color(0xFFD3E7FE),
        shape: OvalBorder(),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
          width: 25,
          height: 25,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Image.asset('assets/plus.png')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Expanded(
              child: Container(
            height: 1283,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF4F3993), Color(0xFF14113C)],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 49),
                  Positioned(
                      child: Stack(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.fromLTRB(291, 9, 0, 0),
                        child: Image.asset(
                          'assets/bell.png',
                          fit: BoxFit.fill,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        margin: EdgeInsets.fromLTRB(321, 9, 0, 0),
                        child: Image.asset(
                          'assets/justify.png',
                          fit: BoxFit.fill,
                          color: Colors.white,
                        ),
                      ),
                      //날씨 background
                      Positioned(
                        child: Container(
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 71, 0, 0),
                              width: 320,
                              height: 170,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.94, -0.34),
                                  end: Alignment(-0.94, 0.34),
                                  colors: [
                                    Color(0xFF67E1D2),
                                    Color(0xFF54A8FF)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //날씨 asset
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Image.asset(
                            'assets/cloud.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //날씨 온도
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(227, 91, 0, 0),
                          child: Text(
                            '27。',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 65,
                              // fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1.20,
                            ),
                          ),
                        ),
                      ),
                      //투자 날씨
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(60, 180, 0, 0),
                          child: Text(
                            '투자 온도 \n맑음',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'pretendard',
                              fontWeight: FontWeight.w700,
                              height: 1.20,
                            ),
                          ),
                        ),
                      ),
                      //날짜
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(240, 180, 0, 0),
                          child: Text(
                            '2023/08/20',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'pretendard',
                              fontWeight: FontWeight.w600,
                              height: 1.20,
                            ),
                          ),
                        ),
                      ),
                      //상승률
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(280, 200, 0, 0),
                          child: Text(
                            '2.37%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'pretendard',
                              fontWeight: FontWeight.w600,
                              height: 1.20,
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                              ),
                            ),
                            _whatIs(),
                            _whatIs(),
                            _whatIs(),
                            _whatIs(),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 520, 0, 0),
                          child: Center(child: _plusCircle()),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
