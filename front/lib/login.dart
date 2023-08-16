//UI 완성
import 'package:flutter/material.dart';
import 'package:front/home.dart';
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
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    width: 343,
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          _id = text;
                        });
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '아이디'),
                    ),
                  ),
                  Container(
                    // inputfielde8H (71:1116)
                    margin: EdgeInsets.fromLTRB(0, 0, 3, 16),
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    width: 343,
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          _pw = text;
                        });
                      },
                      obscureText:
                          true, //비밀번호를 입력할 때 *로 표시되도록 obscureText 속성을 true로 설정
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '비밀번호'),
                    ),
                  ),
                  Container(
                    // buttoninactiveUFK (71:1118)
                    margin: EdgeInsets.fromLTRB(3, 0, 0, 20),
                    width: 343,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Color(0xffb4b4b4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text(
                        '로그인',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'pretendard',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                      // TR3 (71:1122)
                      margin: EdgeInsets.fromLTRB(210, 0, 0, 41),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()),
                          );
                        },
                        child: Text(
                          '아이디/비밀번호 찾기',
                        ),
                      )),
                  Container(
                    // sns8n5 (71:1115)
                    margin: EdgeInsets.fromLTRB(2, 0, 0, 28),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'SNS 계정으로 로그인',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    // autogrouph5wmzJV (D5CgHwD4Caig91BmC6h5WM)
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 96),
                    width: double.infinity,
                    height: 42,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/apple.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 26,
                        ),
                        Container(
                          // autogroupnaxuDh3 (D5CgSbdHiJhfqwVhCgnaxu)
                          width: 42,
                          height: 42,
                          child:
                              Image.asset('assets/naver.png', fit: BoxFit.fill),
                        ),
                        SizedBox(
                          width: 26,
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 0.50, color: Color(0xFFD9D9D9)),
                            image: DecorationImage(
                              image: AssetImage('assets/google.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 26,
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/kakao.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonactivei1X (71:1119)
                    margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                    width: 343,
                    height: 58,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff2a71f9)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '아직 회원이 아니신가요?',
                        textAlign: TextAlign.center,
                      ),
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
