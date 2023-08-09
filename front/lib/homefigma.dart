import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'signup.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 390,
              height: 844,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 348,
                    top: 55,
                    child: Container(
                      width: 29,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Container(
                          // autogroupnaxuDh3 (D5CgSbdHiJhfqwVhCgnaxu)
                          width: 42,
                          height: 42,
                          child:
                              Image.asset('assets/bell.png', fit: BoxFit.fill),
                        ),
                      ]),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 55,
                    child: Container(
                      width: 75,
                      height: 32,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
                  ),
                  Positioned(
                    left: 39,
                    top: 61,
                    child: Text(
                      '앱 아이콘',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 2.10,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 27,
                    top: 114,
                    child: Text(
                      'OOO님, \n포트폴리오를 진단받고 \n쉽게 목돈을 모아보세요.  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 27,
                    top: 451,
                    child: Container(
                      width: 340,
                      height: 102,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFF4F4F4)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 82,
                    top: 474,
                    child: Text(
                      '코스피',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.65,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 27,
                    top: 410,
                    child: Text(
                      '주요 지수',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.87,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 570,
                    child: Text(
                      '실시간 차트',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.87,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    top: 607,
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.87,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 598,
                    child: SizedBox(
                      width: 40,
                      child: Text(
                        '테슬라',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 2.15,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 616,
                    child: Text(
                      '000,000원',
                      style: TextStyle(
                        color: Color(0xFF818181),
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 2.55,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 155,
                    top: 616,
                    child: SizedBox(
                      width: 31,
                      child: Text(
                        '+0.0%',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 2.55,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 474,
                    child: Text(
                      '0,000.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.65,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 278,
                      top: 502,
                      child: Stack(
                        children: [
                          Container(
                            child: Text(
                              ' 00.00 (0.0%)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.33,
                                letterSpacing: -0.32,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              // autogroupnaxuDh3 (D5CgSbdHiJhfqwVhCgnaxu)
                              width: 42,
                              height: 42,
                              child: Image.asset('assets/bell.png',
                                  fit: BoxFit.fill),
                            ),
                          )
                        ],
                      )
                      // Text(
                      // ' 00.00 (0.0%)',
                      // style: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 12,
                      //   fontFamily: 'Pretendard',
                      //   fontWeight: FontWeight.w400,
                      //   height: 2.33,
                      //   letterSpacing: -0.32,
                      // ),
                      // ),
                      ),
                  Positioned(
                    left: 26,
                    top: 215,
                    child: Container(
                      width: 340,
                      height: 182,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFE7E7E7)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 69,
                    top: 295,
                    child: Text(
                      '투자성향 ‘안정형’인 당신을 위해, \n수익성, 안정성, 성장성이 높은 우량주를 추천할게요!\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        height: 1.23,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 145,
                    top: 347,
                    child: Container(
                      width: 103,
                      height: 29,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 168,
                    top: 347,
                    child: Text(
                      '오늘의 추천',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 2.15,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 605,
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    top: 660,
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.87,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 651,
                    child: SizedBox(
                      width: 77,
                      child: Text(
                        '엔비디아',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 2.15,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 669,
                    child: Text(
                      '000,000원',
                      style: TextStyle(
                        color: Color(0xFF818181),
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 2.55,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 155,
                    top: 669,
                    child: SizedBox(
                      width: 31,
                      child: Text(
                        '+0.0%',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 2.55,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 723,
                    child: Text(
                      '00,000원',
                      style: TextStyle(
                        color: Color(0xFF818181),
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 2.55,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 155,
                    top: 723,
                    child: SizedBox(
                      width: 31,
                      child: Text(
                        '+0.0%',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 2.55,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 658,
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    top: 713,
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.87,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 101,
                    top: 704,
                    child: SizedBox(
                      width: 54,
                      child: Text(
                        '알리바바',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 2.15,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 711,
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 758,
                    child: Container(
                      width: 390,
                      height: 86,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 390,
                              height: 86,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 390,
                                      height: 86,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 52,
                                    child: Container(
                                      width: 390,
                                      height: 34,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 128,
                                            top: 21,
                                            child: Container(
                                              width: 134,
                                              height: 5,
                                              decoration: ShapeDecoration(
                                                color: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 1,
                                    child: Container(
                                      width: 390,
                                      height: 61,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 42.64,
                                            top: 10,
                                            child: Container(
                                              width: 24.96,
                                              height: 24,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                            ),
                                          ),
                                          Positioned(
                                            left: 324.48,
                                            top: 10,
                                            child: Container(
                                              width: 24.96,
                                              height: 51,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 24.96,
                                                      height: 24,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Stack(children: [
                                                        // ,
                                                      ]),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 2.08,
                                                    top: 31,
                                                    child: Text(
                                                      'MY',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFB4B4B4),
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'Noto Sans KR',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 390,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 0.50,
                                                    strokeAlign: BorderSide
                                                        .strokeAlignCenter,
                                                    color: Color(0xFFE7E7E7),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 42.64,
                                    top: 11,
                                    child: Container(
                                      width: 24.96,
                                      height: 51,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 24.96,
                                              height: 24,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(children: [
                                                // ,
                                              ]),
                                            ),
                                          ),
                                          Positioned(
                                            left: 5.20,
                                            top: 31,
                                            child: Text(
                                              '홈',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 123.76,
                                    top: 11,
                                    child: Container(
                                      width: 40.56,
                                      height: 51,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 7,
                                            top: 31,
                                            child: Text(
                                              '진단',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFB4B4B4),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 214.24,
                                    top: 11,
                                    child: Container(
                                      width: 54.08,
                                      height: 51,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 14.56,
                                            top: 0,
                                            child: Container(
                                              width: 24.96,
                                              height: 24,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(children: [
                                                // ,
                                              ]),
                                            ),
                                          ),
                                          Positioned(
                                            left: 1,
                                            top: 31,
                                            child: Text(
                                              '둘러보기',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFB4B4B4),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans KR',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 134,
                            top: 12,
                            child: Container(
                              width: 20.83,
                              height: 20.83,
                              child: Stack(children: [
                                // ,
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 171,
                    top: 232,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 480,
                    child: Container(
                      width: 20,
                      height: 14,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
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
