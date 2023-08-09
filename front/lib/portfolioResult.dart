import 'package:flutter/material.dart';
import 'package:front/home.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'signup.dart';

class PortfolioResultScreen extends StatefulWidget {
  @override
  _PortfolioResultScreenState createState() => _PortfolioResultScreenState();
}

class _PortfolioResultScreenState extends State<PortfolioResultScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: Column(
          children: [
            Container(
              width: 390,
              height: 750,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 348,
                    top: 45,
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
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 390,
                      height: 44,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 310,
                            top: 15,
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 105,
                    child: Container(
                      width: 339,
                      height: 322,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(30),
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
                              decoration: BoxDecoration(color: Colors.white),
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
                                              BorderRadius.circular(100),
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
                                      child: Stack(children: [
                                        Container(
                                          // autogroupnaxuDh3 (D5CgSbdHiJhfqwVhCgnaxu)
                                          width: 24.96,
                                          height: 24,
                                          child: Image.asset('assets/bell.png',
                                              fit: BoxFit.fill),
                                        ),
                                      ]),
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
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                            ),
                                          ),
                                          Positioned(
                                            left: 2.08,
                                            top: 31,
                                            child: Text(
                                              'MY',
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
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 390,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 0.50,
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
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
                                        Container(
                                          // autogroupnaxuDh3 (D5CgSbdHiJhfqwVhCgnaxu)
                                          width: 42,
                                          height: 42,
                                          child: Image.asset('assets/home.png',
                                              fit: BoxFit.fill),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Positioned(
                                    left: 5.20,
                                    top: 31,
                                    child: Text(
                                      '홈',
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
                    left: 133,
                    top: 771,
                    child: Container(
                      width: 20.83,
                      height: 20.83,
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 126,
                    child: Text(
                      'OOO님의 포트폴리오',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 1.56,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 160,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '000,000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 34,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                              height: 0.82,
                              letterSpacing: -0.32,
                            ),
                          ),
                          TextSpan(
                            text: '원',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                              height: 1.56,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 48,
                    top: 223,
                    child: Container(
                      width: 159,
                      height: 159,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 89,
                    top: 264,
                    child: Container(
                      width: 77,
                      height: 77,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 343,
                    top: 126,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 346,
                    top: 230,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 12,
                        height: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 346,
                    top: 261,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 12,
                        height: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 346,
                    top: 292,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 12,
                        height: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 346,
                    top: 323,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 12,
                        height: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 346,
                    top: 354,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 12,
                        height: 12,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 224,
                    top: 230,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 224,
                    top: 261,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 224,
                    top: 292,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 224,
                    top: 323,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 224,
                    top: 354,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 243,
                    top: 230,
                    child: Text(
                      '주식이름',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 163,
                    top: 257,
                    child: Text(
                      '00%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 311,
                    top: 261,
                    child: Text(
                      '자산',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 311,
                    top: 230,
                    child: Text(
                      '자산',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 311,
                    top: 291,
                    child: Text(
                      '자산',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 310,
                    top: 323,
                    child: Text(
                      '자산',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 310,
                    top: 354,
                    child: Text(
                      '자산',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 243,
                    top: 261,
                    child: Text(
                      '주식이름',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 243,
                    top: 292,
                    child: Text(
                      '주식이름',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 243,
                    top: 323,
                    child: Text(
                      '주식이름',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 243,
                    top: 354,
                    child: Text(
                      '주식이름',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 128,
                    top: 223,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 41,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFA6A6A6),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 166,
                    top: 303,
                    child: Container(
                      width: 41,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFB0B0B0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 626,
                    child: Container(
                      width: 340,
                      height: 89,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(30),
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
                    left: 25,
                    top: 448,
                    child: Container(
                      width: 164,
                      height: 155.11,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(30),
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
                    left: 184,
                    top: 466,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 43,
                    top: 466,
                    child: SizedBox(
                      width: 100,
                      height: 55,
                      child: Text(
                        '이전\n진단서 확인',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 1.56,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 121,
                    top: 539,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 448,
                    child: Container(
                      width: 164,
                      height: 155.11,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(30),
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
                    left: 359,
                    top: 466,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 218,
                    top: 466,
                    child: SizedBox(
                      width: 84,
                      height: 55,
                      child: Text(
                        '투자\n목표 수립',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 1.56,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 157,
                    top: 656,
                    child: Text(
                      '진단 하기 ',
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
                    left: 296,
                    top: 539,
                    child: Container(
                      width: 50,
                      height: 50,
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
