import 'package:flutter/material.dart';;
// import 'package:flutter_svg/flutter_svg.dart';
import 'signup.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 69,
                top: 512,
                child: SizedBox(
                  width: 252,
                  child: Text(
                    '로보어드바이저 모델이 \nOO님의 포트폴리오를 진단 중입니다',
                    textAlign: TextAlign.center,
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
                left: 72,
                top: 451,
                child: Text(
                  '잠시만 기다려 주세요!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 29,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 0.97,
                    letterSpacing: -0.32,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 810,
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
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 22,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 37,
                    height: 37,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: [
                    ,
                    ]),
                  ),
                ),
              ),
              Positioned(
                left: 123,
                top: 250,
                child: Container(
                  width: 143,
                  height: 143,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 142,
                top: 269,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.79),
                  child: Container(
                    width: 148.20,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF818181),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 143.21,
                top: 373.79,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.79),
                  child: Container(
                    width: 148.20,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF818181),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 163,
                top: 355,
                child: Text(
                  '3D 아이콘',
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
            ],
          ),
        ),
      ],
    );
  }
}