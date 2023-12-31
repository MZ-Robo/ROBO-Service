import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:front/lowbar.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> memos = [
    '단일종목 투자보단 포트폴리오 분산으로 리스크 줄이기: 분산 방법 탐색',
    '재무보고서를 통한 합리적인 기업분석',
    '리스크 관리, 포트폴리오 다변화 등에 대한 기초 지식 익히기',
  ];
  TextEditingController _textEditingController = TextEditingController();
  bool isWriteMemo = false;
  bool isWriteTrading = false;

  Widget _MemoView(String text) {
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

  Widget _MemoWrite() {
    return Center(
      child: Container(
        width: 315,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "메모를 입력하세요"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  memos.add(_textEditingController.text);
                  _textEditingController.clear();
                  isWriteMemo = false;
                });
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff4F3993)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
              child: Text("확인"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _plusMemo() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isWriteMemo = true;
        });
      },
      child: Container(
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
      ),
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

  Widget _goalGuage(double progressValue) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            showLabels: false,
            showTicks: false,
            startAngle: 180,
            endAngle: 0,
            radiusFactor: 0.7,
            canScaleToFit: true,
            axisLineStyle: AxisLineStyle(
              thickness: 0.1,
              color: const Color.fromARGB(30, 0, 169, 181),
              thicknessUnit: GaugeSizeUnit.factor,
              cornerStyle: CornerStyle.startCurve,
            ),
            pointers: <GaugePointer>[
              RangePointer(
                value: progressValue,
                width: 0.1,
                sizeUnit: GaugeSizeUnit.factor,
                cornerStyle: CornerStyle.bothCurve,
                gradient: const SweepGradient(
                  colors: <Color>[
                    Color(0xffFED602),
                    Color(0xffFF7A00),
                  ],
                  stops: <double>[0.5, 1],
                ),
              ),
            ],
          ),
        ],
      ),
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
            _goalGuage(40),
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

  Widget _plusTrading() {
    return GestureDetector(
      onTap: () {
        // if (isWriteTrading) {
        _tradingMemo(context);
        // }11111155555555555
      },
      child: Container(
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
      ),
    );
  }

  void _tradingMemo(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Container(
            color: Color(0xFFD0E9FF),
            height: 400,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '매매일지 작성',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 57),
                  Container(
                    height: 250,
                    width: 300,
                    // color: Colors.black,
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF5B5B),
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '종목명 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF5B5B),
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '매매단가 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF5B5B),
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '수량 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF5B5B),
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '매수/매도 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFFF5B5B),
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '매매일자 ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Container(child: Row,),
                              // Text(
                              //   '*',
                              //   style: TextStyle(
                              //     color: Color(0xFFFF5B5B),
                              //     fontSize: 15,
                              //     fontFamily: 'Pretendard',
                              //     fontWeight: FontWeight.w500,
                              //     height: 0,
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Container(
                          width: 110,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _weatherBox() {
    return GestureDetector(
      child: Container(
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
                ),
              ),
              child: Center(
                child: Text(
                  '+0.55',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0E3FF2),
                    fontSize: 6,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.white,
              child: Image.asset(
                'assets/Group9218.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 8,
            ),
            _plusTrading(),
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
                                    height: 260,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: memos
                                            .map((memo) => _MemoView(memo))
                                            .toList()
                                          ..add(isWriteMemo
                                              ? _MemoWrite()
                                              : Container()),
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
                                child: Center(child: _plusMemo()),
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
