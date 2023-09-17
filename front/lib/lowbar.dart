import 'package:flutter/material.dart';
import 'package:front/home.dart';
import 'package:front/lookAround.dart';

class LowBarUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: Row(
        children: [
          SizedBox(width: 85),
          SizedBox(
              width: 24,
              height: 52,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Column(children: [
                  Container(height: 2),
                  Positioned(
                      child: Image.asset(
                    'assets/home.png',
                    width: 24,
                    height: 24,
                  )),
                  Container(
                    height: 6,
                  ),
                  Positioned(
                    child: Text(
                      '홈',
                      style: TextStyle(
                        // color: Color(0xFF4F3993),
                        fontSize: 14,
                        fontFamily: 'Noto Sans KR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ]),
              )),
          SizedBox(width: 65),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 32,
            height: 50,
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Look()),
                // );
              },
              child: Column(children: [
                Positioned(
                    child: Image.asset(
                  'assets/diagnosis.png',
                  width: 28,
                  // height: 28,
                )),
                Positioned(
                  child: Text(
                    '진단',
                    style: TextStyle(
                      // color: Color(0xFF4F3993),
                      fontSize: 14,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(width: 60),
          SizedBox(
            width: 52,
            height: 55,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LookAround()),
                );
              },
              child: Column(children: [
                Container(
                  height: 5,
                ),
                Positioned(
                    child: Image.asset(
                  'assets/checkbox.png',
                  width: 24,
                  // height: 24,
                )),
                Container(
                  height: 4,
                ),
                Positioned(
                  child: Text(
                    '둘러보기',
                    style: TextStyle(
                      // color: Color(0xFF4F3993),
                      fontSize: 14,
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
