import 'dart:math';

import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:front/lowbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _Memo(String text) {
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 10, 0, 10),
          padding: EdgeInsets.all(10),
          constraints: BoxConstraints(
            maxWidth: 315.0, // 최대 너비 설정
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
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

  Widget _weatherBox() {
    return Container(
      width: 73,
      height: 170,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 21),
            child: Text(
              '08/13',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 32,
            height: 13,
            decoration: ShapeDecoration(
                color: Color(0xFFD3E6FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            child: Center(
              child: Text(
                '+0.55',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF0E3FF2), //수익 파랑, 손해 빨강
                    fontSize: 6,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            // width: 46,
            // height: 44,
            color: Colors.white,
            child: Image.asset(
              'assets/Group9218.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 8,
          ),
          _plusCircle(),
        ],
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
                                  Container(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _Memo(
                                              '단일종목 투자보단 포트폴리오 분산으로 리스크 줄이기: 분산 방법 탐색'),
                                          _Memo('재무보고서를 통한 합리적인 기업분석'),
                                          _Memo('1234'),
                                          _Memo('123512341235asdf'),
                                        ],
                                      ),
                                    ),
                                  )
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
                            Positioned(
                              child: Container(
                                width: 381,
                                height: 231,
                                margin: EdgeInsets.only(
                                    top: 840, left: 35, bottom: 31),
                                decoration: ShapeDecoration(
                                  color: Colors.white
                                      .withOpacity(0.30000001192092896),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      bottomLeft: Radius.circular(32),
                                    ),
                                  ),
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [
                                    SizedBox(width: 20),
                                    _weatherBox(),
                                    SizedBox(width: 20),
                                    _weatherBox(),
                                    SizedBox(width: 20),
                                    _weatherBox(),
                                    SizedBox(width: 20),
                                    _weatherBox(),
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //하단바
            LowBarUnit(),
          ],
        ),
      ),
    );
  }
}
