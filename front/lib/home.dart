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
          body: Column(children: [
            Container(
              width: 1929,
              height: 26,
            ),
            Container(
              // home76Z (16:427)
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            Container(
              // autogroupuqthNs3 (D5CbV5Di8EyBgnPSQQUqtH)
              padding: EdgeInsets.fromLTRB(20, 11, 16.63, 7),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupsp6hHUD (D5CZGJawQoqpQWz3BCsp6h)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 27),
                    width: double.infinity,
                    height: 32,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupxtcmQHw (D5CZToFna8k2HVS4aHxtcM)
                          margin: EdgeInsets.fromLTRB(0, 0, 256.63, 0),
                          width: 75,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffd9d9d9),
                          ),
                          child: Center(
                            child: Text(
                              '앱 아이콘',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                height: 2.1,
                                letterSpacing: -0.3199999928,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // bellfjf (16:428)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          width: 21.75,
                          height: 26.66,
                          child:
                              Image.asset('assets/bell.png', fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // ooomXo (16:434)
                    margin: EdgeInsets.fromLTRB(7, 0, 0, 17),
                    constraints: BoxConstraints(
                      maxWidth: 210,
                    ),
                    child: Text(
                      'OOO님, \n포트폴리오를 진단받고 \n쉽게 목돈을 모아보세요.  ',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                        letterSpacing: -0.3199999928,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupyd491BF (D5CZaDEmRU7ayHDgfByd49)
                    margin: EdgeInsets.fromLTRB(6, 0, 7.38, 13),
                    padding: EdgeInsets.fromLTRB(30, 17, 30, 21),
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffe7e7e7)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle99tVw (16:517)
                          margin: EdgeInsets.fromLTRB(115, 0, 117, 15),
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        Container(
                          // dCd (16:447)
                          child:
                              // DB 고객 성향에 따른 추천
                              Text(
                            '투자성향 ‘안정형’인 당신을 위해, \n수익성, 안정성, 성장성이 높은 우량주를 추천할게요!\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              height: 1.2307692308,
                              letterSpacing: -0.3199999928,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupzv3fGWV (D5CZkHnJkzZBmEbfN2Zv3F)
                          margin: EdgeInsets.fromLTRB(40.5, 0, 38.5, 0),
                          padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
                          width: double.infinity,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            '오늘의 추천',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              height: 2.1538461538,
                              letterSpacing: -0.3199999928,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // vb3 (16:437)
                    margin: EdgeInsets.fromLTRB(7, 0, 0, 13),
                    child: Text(
                      '주요 지수',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.8666666667,
                        letterSpacing: -0.3199999928,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroup3qg1SZP (D5CZsNQqszrDCKwtqH3qg1)
                    margin: EdgeInsets.fromLTRB(7, 0, 6.38, 17),
                    padding: EdgeInsets.fromLTRB(26, 23, 30, 23),
                    width: double.infinity,
                    height: 102,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfff4f4f4)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle100gTj (16:518)
                          margin: EdgeInsets.fromLTRB(0, 0, 9, 30),
                          width: 20,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        Container(
                          // p49 (16:436)
                          margin: EdgeInsets.fromLTRB(0, 0, 125, 28),
                          child: Text(
                            '코스피',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              height: 1.6470588235,
                              letterSpacing: -0.3199999928,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupqy4d7ow (D5Ca37dc5gq5cdYZqwQY4d)
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                // GB3 (16:443)
                                '0,000.00',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6470588235,
                                  letterSpacing: -0.3199999928,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Container(
                                // oRs (16:444)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text(
                                  ' 00.00 (0.0%)',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 2,
                                    letterSpacing: -0.3199999928,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // Kv1 (16:438)
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      '실시간 차트',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.8666666667,
                        letterSpacing: -0.3199999928,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouppfdwRi9 (D5CaBcPT2Vai8jxr1SPFDw)
                    margin: EdgeInsets.fromLTRB(12, 0, 6.37, 7),
                    width: double.infinity,
                    height: 46,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupdsm7wRb (D5CaTbvoWbhn41TVFudsm7)
                          padding: EdgeInsets.fromLTRB(0, 7, 14, 5),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // 4m7 (16:439)
                                margin: EdgeInsets.fromLTRB(0, 0, 13, 2),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8666666667,
                                    letterSpacing: -0.3199999928,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // teslapng0zPs (16:451)
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Color(0xffd9d9d9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouprjuoXub (D5CaMXGbo6nwjsTAsBrjuo)
                          margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                          width: 41,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // GMP (16:440)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 45,
                                    height: 28,
                                    child: Text(
                                      '테슬라',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 2.1538461538,
                                        letterSpacing: -0.3199999928,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // xk1 (16:441)
                                left: 0,
                                top: 18,
                                child: Align(
                                  child: SizedBox(
                                    width: 45,
                                    height: 28,
                                    child: Text(
                                      '000,000원',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        height: 2.5454545455,
                                        letterSpacing: -0.3199999928,
                                        color: Color(0xff818181),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // 53w (16:442)
                          margin: EdgeInsets.fromLTRB(0, 18, 165, 0),
                          child: Text(
                            '+0.0%',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 2.5454545455,
                              letterSpacing: -0.3199999928,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // vectorPqK (16:468)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0.71),
                          width: 20,
                          height: 17.29,
                          child:
                              Image.asset('assets/heart.png', fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupjpdfWQ9 (D5CacGM32KgmkwmRGVjPDf)
                    margin: EdgeInsets.fromLTRB(12, 0, 7.37, 7),
                    width: double.infinity,
                    height: 46,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupvq5fEqw (D5CarkvtQAjYznFBuAvq5f)
                          padding: EdgeInsets.fromLTRB(0, 7, 14, 5),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ZtD (16:452)
                                margin: EdgeInsets.fromLTRB(0, 0, 13, 2),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8666666667,
                                    letterSpacing: -0.3199999928,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // nvidiapng0tQh (16:458)
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Color(0xffd9d9d9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupphpqq53 (D5Cam1bTpWHT4J2BCdPHpq)
                          margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                          width: 41,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // mUV (16:453)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 60,
                                    height: 28,
                                    child: Text(
                                      '엔비디아',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 2.1538461538,
                                        letterSpacing: -0.3199999928,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // Gg9 (16:454)
                                left: 0,
                                top: 18,
                                child: Align(
                                  child: SizedBox(
                                    width: 41,
                                    height: 28,
                                    child: Text(
                                      '000,000원',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        height: 2.5454545455,
                                        letterSpacing: -0.3199999928,
                                        color: Color(0xff818181),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // NUH (16:455)
                          margin: EdgeInsets.fromLTRB(0, 18, 164, 0),
                          child: Text(
                            '+0.0%',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 2.5454545455,
                              letterSpacing: -0.3199999928,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // vectortxR (16:469)
                          margin: EdgeInsets.fromLTRB(0, 1.29, 0, 0),
                          width: 20,
                          height: 17.29,
                          child:
                              Image.asset('assets/heart.png', fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupqvcuRSZ (D5Cb2ayqtKL71VngqNqvcu)
                    margin: EdgeInsets.fromLTRB(12, 0, 6.37, 0),
                    width: double.infinity,
                    height: 47,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // autogroupfnjowfo (D5CbGfQiqsJUHGYKrLFNjo)
                          padding: EdgeInsets.fromLTRB(0, 7, 14, 6),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // gNV (16:459)
                                margin: EdgeInsets.fromLTRB(0, 0, 13, 2),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8666666667,
                                    letterSpacing: -0.3199999928,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // alibabagroupjpeg0C5w (16:461)
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Color(0xffd9d9d9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouppdnd8kH (D5CbB5jgq85jXcCxzspdnD)
                          margin: EdgeInsets.fromLTRB(0, 0, 18, 0),
                          width: 36,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // sxm (16:456)
                                left: 0,
                                top: 19,
                                child: Align(
                                  child: SizedBox(
                                    width: 36,
                                    height: 28,
                                    child: Text(
                                      '00,000원',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        height: 2.5454545455,
                                        letterSpacing: -0.3199999928,
                                        color: Color(0xff818181),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // PAR (16:460)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 30,
                                    height: 28,
                                    child: Text(
                                      '알리바바',
                                      style: TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 2.1538461538,
                                        letterSpacing: -0.3199999928,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // Uhf (16:457)
                          margin: EdgeInsets.fromLTRB(0, 0, 165, 0),
                          child: Text(
                            '+0.0%',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              height: 2.5454545455,
                              letterSpacing: -0.3199999928,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // vectornyF (16:462)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 9.71),
                          width: 20,
                          height: 17.29,
                          child:
                              Image.asset('assets/heart.png', fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // component1iru (71:735)
              width: double.infinity,
              height: 86,
              child: Container(
                // dockbarH9K (16:463)
                padding: EdgeInsets.fromLTRB(0, 1, 0, 8),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // Py3 (I16:463;20:22)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      padding: EdgeInsets.fromLTRB(42.64, 10, 40.56, 0),
                      width: double.infinity,
                      height: 62,
                      child: Container(
                        // autogroupafcrJq7 (D5CdjFynfUZA44rtKrafCR)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupublyFVT (D5CdqWJNwthMZ2krZfUbLy)
                              margin: EdgeInsets.fromLTRB(0, 0, 63.44, 0),
                              width: 24.96,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // homeywF (I16:463;9:4)
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 24.96,
                                      height: 24,
                                    ),
                                  ),
                                  Positioned(
                                    // dockhomeinactiveKVK (I16:463;153:635)
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(3.12, 2, 3.12, 0),
                                      width: 24.96,
                                      height: 52,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // homeRoF (I16:463;153:635;153:629)
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 9),
                                            width: 18.72,
                                            height: 20,
                                            child: Image.asset(
                                                'assets/home.png',
                                                fit: BoxFit.fill),
                                          ),
                                          Container(
                                            // Ycy (I16:463;153:635;153:632)
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 5.56, 0),
                                            child: Text(
                                              '홈',
                                              style: TextStyle(
                                                fontFamily: 'Noto Sans KR',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.4475,
                                                color: Color(0xff000000),
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
                            Container(
                              // dockmessageactiveGYy (I16:463;153:757)
                              margin: EdgeInsets.fromLTRB(0, 0, 63.24, 0),
                              padding: EdgeInsets.fromLTRB(2.08, 1, 1.17, 0),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupfcg5zE5 (D5Ce8q8qyLfLxuNiaqfcG5)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                                    width: 21.71,
                                    height: 21,
                                    child: Image.asset('assets/Group.png',
                                        fit: BoxFit.fill),
                                  ),
                                  Container(
                                    // VRj (I16:463;153:757;20:26)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0.43, 0),
                                    child: Text(
                                      '진단',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Noto Sans KR',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4475,
                                        color: Color(0xffb4b4b4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // dockcommunityactiveDMj (I16:463;153:762)
                              margin: EdgeInsets.fromLTRB(0, 0, 61.24, 0),
                              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // globevmw (I16:463;153:762;153:718)
                                    margin: EdgeInsets.fromLTRB(0.08, 0, 0, 9),
                                    width: 20.8,
                                    height: 20,
                                    child: Image.asset('assets/globe.png',
                                        fit: BoxFit.fill),
                                  ),
                                  Text(
                                    // qP7 (I16:463;153:762;153:722)
                                    '둘러보기',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Noto Sans KR',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.4475,
                                      color: Color(0xffb4b4b4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // dockmyactiveykD (I16:463;153:752)
                              padding: EdgeInsets.fromLTRB(2.58, 3, 4.16, 0),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // userutm (I16:463;153:752;153:737)
                                    margin: EdgeInsets.fromLTRB(1.58, 0, 0, 10),
                                    width: 16.64,
                                    height: 18,
                                    child: Image.asset('assets/user.png',
                                        fit: BoxFit.fill),
                                  ),
                                  Container(
                                    // myDuT (I16:463;153:752;153:740)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0.22, 0),
                                    child: Text(
                                      'MY',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Noto Sans KR',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4475,
                                        color: Color(0xffb4b4b4),
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
                    Container(
                      // homeindicatorwaZ (I16:463;153:397;5:3093)
                      margin: EdgeInsets.fromLTRB(128, 0, 128, 0),
                      width: double.infinity,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
