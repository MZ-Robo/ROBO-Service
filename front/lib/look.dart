import 'package:flutter/material.dart';

//1080*2220
class GPTFeedbackBox extends StatelessWidget {
  final double lowbarWidth = 375;
  final double lowbarHeight = 86;
  // final double paddingValue = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width - lowbarWidth,
      height: MediaQuery.of(context).size.height - lowbarHeight,
      decoration: BoxDecoration(
        color: Color(0XFFd9d9d9),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(13, 30, 13, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // GPT 피드백. 길어질 수 있으므로 스크롤 가능하도록 설정했음.
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddindustry. Lorem Ipsum has been the industrys standard dummy text...ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
