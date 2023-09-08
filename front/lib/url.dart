import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

class NewsItem {
  final String date;
  final String title;
  final String image;
  final String link;

  NewsItem({
    required this.date,
    required this.title,
    required this.image,
    required this.link,
  });
}

class SearchRepository {
  static final SearchRepository instance = SearchRepository._internal();
  factory SearchRepository() => instance;
  SearchRepository._internal();

  Future<List<NewsItem>> getNaverNewsSearch() async {
    try {
      http.Response _response = await http.get(
        Uri.parse(
          "https://openapi.naver.com/v1/search/news.xml?query=경제뉴스&display=4&sort=sim",
        ),
        headers: {
          "X-Naver-Client-Id": 'TBx3aA4Hh7YjSODQ5hWm',
          "X-Naver-Client-Secret": 'MjZKcCCkBQ',
        },
      );
      if (_response.statusCode == 200) {
        print('response');
        final xmlDoc = xml.XmlDocument.parse(_response.body);
        final items = xmlDoc.findAllElements('item');

        List<NewsItem> newsList = [];

        for (var item in items) {
          final date = item.getElement('pubDate')?.text ?? '';
          final title = item.getElement('title')?.text ?? '';
          final image = ''; // 이미지 추출 코드 추가 필요
          final link = item.getElement('link')?.text ?? '';

          newsList.add(NewsItem(
            date: date,
            title: title,
            image: image,
            link: link,
          ));
        }
        print(newsList[0].date);
        return newsList;
      }
    } catch (error) {
      // 예외 처리
      print(error);
    }

    return []; // 에러가 발생하면 빈 리스트 반환
  }
}
