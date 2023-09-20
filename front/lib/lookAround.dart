// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:front/lowbar.dart';
import 'package:front/url.dart';

import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'package:url_launcher/url_launcher.dart';

//1080*2220
class LookAround extends StatefulWidget {
  @override
  _LookAroundState createState() => _LookAroundState();
}

class _LookAroundState extends State<LookAround> {
  final double lowbarWidth = 375;
  final double lowbarHeight = 86;
  // final double paddingValue = 60;

  //news
  List<String> news = [];
  List<String> newsThumbnails = [];

  //youtube
  List<String> videoLinks = [
    'https://wnewsww.youtube.com/watch?v=lDWGPapR-_U',
  ];
  List<String> videoThumbnails = [
    'https://i.ytimg.com/vi/lDWGPapR-_U/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAef_WCCA-thZWfnnqrj2M6Nxwz6w',
  ];
  final searchRepository = SearchRepository(); // SearchRepository 객체를 생성합니다.
  List<NewsItem> newsList = [];

  @override
  initState() {
    super.initState();
    fetchNewsList();
    print("newList : $newsList");
  }

  Future<void> fetchNewsList() async {
    final fetchedNewsList = await searchRepository.getNaverNewsSearch();

    setState(() {
      newsList = fetchedNewsList; // 뉴스 리스트를 업데이트합니다.
    });

    print("newList : $newsList");
  }

  Widget _topPortfolio(String name) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      width: 111,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 99, // 동그라미의 크기
            height: 99, // 동그라미의 크기
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue, // 동그라미의 색상
            ),
          ),
          SizedBox(height: 10), // 간격 조절
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _newsUpload(String datetime, String source, String title,
      String imgUrl, String newsUrl) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(newsUrl)) {
          await launch(newsUrl);
        } else {
          throw 'Could not launch $newsUrl';
        }
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      '$datetime  ㅣ  $source',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        color: Color(0xff8b8b8b),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    width: 235,
                    child: Text(
                      '$title',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 80,
              height: 60,
              child: Image.network(
                imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String extractVideoId(String url) {
    // YouTube 동영상 URL에서 비디오 ID 추출
    RegExp regExp = RegExp(r"v=([a-zA-Z0-9_-]+)");
    Match? match = regExp.firstMatch(url);
    String videoId;
    print("url $match");
    if (match != null) {
      videoId = match.group(1)!;
      return videoId;
    } else {
      return '비디오 ID를 찾을 수 없습니다.';
    }
  }

  Widget _youtube(String videoUrl) {
    String videoId = extractVideoId(videoUrl);
    String thumbnailUrl =
        'https://img.youtube.com/vi/$videoId/maxresdefault.jpg';
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      width: 218,
      height: 123,
      color: Colors.white,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // 버튼의 패딩을 제거
        ),
        onPressed: () async {
          final url = Uri.parse(videoUrl);
          if (await canLaunchUrl(url)) {
            launchUrl(url);
          } else {
            print("Can't launch $url");
          }
        },
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(20),
          child: Image.network(
            thumbnailUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _letter(
      String title, String hashTag, String imgUrl, String letterUrl) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(letterUrl)) {
          await launch(letterUrl);
        } else {
          throw 'Could not launch $letterUrl';
        }
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(26, 0, 14, 27),
        width: double.infinity,
        height: 37,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                // margin: EdgeInsets.fromLTRB(0, 0, 60, 0),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 9),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.2575,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Text(
                      hashTag,
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 9.5,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        color: Color(0xff8d8d8d),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // rectangle110zpR (172:673)
              margin: EdgeInsets.only(right: 14),
              width: 59,
              height: 33,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(imgUrl, fit: BoxFit.fill),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // ig1 (172:640)
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupfta1ztR (WmoEhb7KFcUhVc293rFTA1)
                            padding: EdgeInsets.fromLTRB(13, 56, 0, 22),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Positioned(
                                  child: Stack(
                                    children: [
                                      Container(
                                        // autogroupawftJeD (WmoCLuY4aauUr7pF7xaWFT)
                                        margin:
                                            EdgeInsets.fromLTRB(283, 0, 0, 9),
                                        width: 24,
                                        height: 24,
                                        child: Image.asset('assets/bell.png',
                                            fit: BoxFit.fill),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(313, 0, 0, 9),
                                        width: 35,
                                        height: 35,
                                        child: Image.asset('assets/justify.png',
                                            fit: BoxFit.fill),
                                      )
                                    ],
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.only(left: 13),
                                //   child: Column(
                                //     children: [],
                                //   ),
                                // ),
                                Container(
                                  // CzV (172:643)
                                  margin: EdgeInsets.fromLTRB(13, 0, 0, 23),
                                  child: Text(
                                    '둘러보기',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      height: 1.4,
                                      letterSpacing: -0.3199999928,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupfafk5oP (WmoCZEWraVxWfDiXkVFaFK)
                                  margin: EdgeInsets.fromLTRB(13, 0, 0, 32),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 23),
                                  width: 329,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffcccccc)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // diconsZiZ (172:650)
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        width: 62,
                                        height: 62,
                                        child: Image.asset('assets/3dicons.png',
                                            fit: BoxFit.fill),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 16),
                                        // constraints: BoxConstraints(
                                        //   maxWidth: 111,
                                        // ),
                                        child: Text(
                                          '투자 상식 퀴즈를 풀고\n포트폴리오 진단권을 받아보세요',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Pretendard',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300,
                                            height: 1.2307692308,
                                            // letterSpacing: -0.3199999928,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 29,
                                        decoration: BoxDecoration(
                                          color: Color(0xff4F3993),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            '도전하기',
                                            style: TextStyle(
                                              fontFamily: 'Pretendard',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xfff5f5f5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bHs (172:651)
                                  margin: EdgeInsets.fromLTRB(13, 0, 0, 10),
                                  child: Text(
                                    '핫한 포트폴리오 살펴보기',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // W9w (172:654)
                                  margin: EdgeInsets.fromLTRB(13, 0, 0, 22),
                                  child: Text(
                                    '상위 10% 포트폴리오를 지금 바로 확인하세요!',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [
                                    _topPortfolio('이윤아'),
                                    _topPortfolio('정종하'),
                                    _topPortfolio('최예린'),
                                    _topPortfolio('김현동'),
                                  ]),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
                            width: double.infinity,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Color(0xffd9d9d9),
                            ),
                          ),
                          Container(
                            // Gim (172:653)
                            margin: EdgeInsets.fromLTRB(26, 0, 0, 18),
                            child: Text(
                              '이 시각 주요 뉴스',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.2575,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(26, 0, 24, 18),
                            child: Column(
                              children: [
                                _newsUpload(
                                    '2023.09.17 12:03',
                                    '헤럴드 경제',
                                    '도이치은행 만난 금감원장 "서울지점 증자 환영,한국 발전 힘써달라"',
                                    'https://imgnews.pstatic.net/image/016/2023/09/17/20230917000068_0_20230917120301262.jpg?type=w647',
                                    'https://n.news.naver.com/mnews/article/016/0002198764?sid=101'),
                                const SizedBox(height: 12),
                                _newsUpload(
                                    '2023.09.17 11:55',
                                    '한겨레',
                                    '아이폰12 전자파 괜찮나…프랑스·벨기에 이어 한국도 재조사 나서',
                                    'https://imgnews.pstatic.net/image/028/2023/09/17/0002656943_001_20230917115501121.jpg?type=w647',
                                    'https://n.news.naver.com/mnews/article/028/0002656943?sid=101'),
                                const SizedBox(height: 12),
                                _newsUpload(
                                    '2023.09.17 12:02',
                                    '국민일보',
                                    '[르포] 농가의 미래, 태양광에서 찾다',
                                    'https://imgnews.pstatic.net/image/005/2023/09/17/2023091623283967184_1694874520_0018676790_20230917120203593.jpg?type=w647',
                                    'https://n.news.naver.com/mnews/article/005/0001638639?sid=101'),
                                const SizedBox(height: 12),
                                _newsUpload(
                                    '2023.09.17 13:38',
                                    '디지털타임스',
                                    'D램은 3분기·낸드는 4분기…메모리 `가격반등` 기대감 고조',
                                    'https://imgnews.pstatic.net/image/029/2023/09/17/0002825694_001_20230917134001096.jpg?type=w647',
                                    'https://n.news.naver.com/mnews/article/029/0002825694?sid=101'),
                              ],
                            ),
                          ),
                          Container(
                            // rectangle109TEq (172:666)
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 26),
                            width: double.infinity,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Color(0xffd9d9d9),
                            ),
                          ),
                          Container(
                            // CCR (172:652)
                            margin: EdgeInsets.fromLTRB(26, 0, 0, 16),
                            child: Text(
                              '투자 꿀팁 큐레이션',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.2575,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // zipigZ (172:655)
                            margin: EdgeInsets.fromLTRB(26, 0, 0, 0),
                            child: Text(
                              '보다보면 똑똑해지는 투자 유튜브 ZIP',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 13.5,
                                fontWeight: FontWeight.w600,
                                height: 1.2575,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupz8vmpzV (WmoFDA6NzWt38AbTn1Z8vM)
                            padding: EdgeInsets.fromLTRB(26, 27, 0, 23),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [
                                    _youtube(
                                        'https://www.youtube.com/watch?v=lDWGPapR-_U'),
                                    _youtube(
                                        'https://www.youtube.com/watch?v=bE1iSUYA0KI'),
                                    _youtube(
                                        'https://www.youtube.com/watch?v=8lNSGQX-oyI'),
                                    _youtube(
                                        'https://www.youtube.com/watch?v=1dM18BpID2I'),
                                  ]),
                                )
                              ],
                            ),
                          ),
                          Container(
                            // N8q (172:656)
                            margin: EdgeInsets.fromLTRB(26, 0, 0, 27),
                            child: Text(
                              '읽다보면 똑똑해지는 투자 상식 레터 ',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 13.5,
                                fontWeight: FontWeight.w600,
                                height: 1.2575,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          _letter(
                              '초보 주식 투자자가 갖는 4가지 착각에 대하여',
                              '#현명한 주식 투자 마인드 #투자 습관',
                              'assets/letter1.png',
                              'https://brunch.co.kr/@ansang/1113'),
                          _letter(
                              '주식 초보를 위한 투자 주의사항',
                              '#투자 법칙 #투자 주의사항',
                              'assets/letter2.png',
                              'https://post.naver.com/viewer/postView.naver?volumeNo=32389306&memberNo=6457418&vType=VERTICAL'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LowBarUnit(),
          ],
        ),
      ),
    );
  }
}
