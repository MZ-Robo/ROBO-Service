import 'dart:math';

import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:front/lowbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double lowbarHeight = 86;

  Widget _whatIs(String text) {
    return IntrinsicWidth(
      child: Container(
        height: 46,
        margin: EdgeInsets.fromLTRB(40, 10, 0, 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(text),
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

  Widget _weather(String imgUrl, String temperature, String textTemperature,
      String date, String percentage) {
    return Container(
      child: Stack(children: [
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
                    colors: [Color(0xFF67E1D2), Color(0xFF54A8FF)],
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
              imgUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
        //날씨 온도
        Positioned(
          child: Container(
            margin: EdgeInsets.fromLTRB(227, 91, 0, 0),
            child: Text(
              temperature,
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
              textTemperature,
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
              date,
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
              percentage,
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
      ]),
    );
  }

  Widget _SunriseSunset() {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 578, 0, 0),
        width: 320,
        height: 237,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: 21, top: 16),
                child: Text(
                  '일출일몰',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: 21, top: 35),
                child: Text(
                  '내 투자에 볕들날은 언제올까?',
                  style: TextStyle(
                    color: Color(0xFF727272),
                    fontSize: 8,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: 198),
                child: Center(
                  child: Text(
                    '투자 목표금액 40만원까지 40퍼센트 남았어요.',
                    style: TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 9,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // topBar,
            Container(
              height: 20,
              color: Color(0xFF4F3993),
            ),
            Expanded(
              child: Container(
                // height: 1283,
                // height: MediaQuery.of(context).size.height - lowbarHeight,
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
                      // const SizedBox(height: 49),
                      Positioned(
                        child: Stack(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              margin: EdgeInsets.fromLTRB(291, 12, 0, 0),
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
                            //투자 온도
                            _weather('assets/cloud.png', '27。', '투자 온도 \n맑음',
                                '2023/08/20', '2.37%'),
                            //투자온도 아래 항목들
                            Positioned(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                                    ),
                                  ),
                                  _whatIs('12341234'),
                                  _whatIs('asdfqwerzxcv'),
                                  _whatIs('1234'),
                                  _whatIs('123512341235asdf'),
                                ],
                              ),
                            ),
                            //추가 버튼
                            Positioned(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 520, 0, 0),
                                child: Center(child: _plusCircle()),
                              ),
                            ),
                            _SunriseSunset(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   height: 85,
            //   child: Row(
            //     children: [
            //       Container(),
            //       Container(),
            //       Container(),
            //     ],
            //   ),
            // ),
            LowBarUnit(),
          ],
        ),
      ),
    );
  }
}
