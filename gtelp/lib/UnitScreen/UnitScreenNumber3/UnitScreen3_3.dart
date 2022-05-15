import 'package:flutter/material.dart';

class UnitScreen3_3 extends StatelessWidget {
  List<String> words = ['comfortable', 'command', 'common',
    'compare', 'competition', 'completely',
    'component', 'compose', 'comprehend', 'concentrate'];
  List<String> mean = [
    '[형] 편안한',
    '[명] 명령\n[동] 명령하다',
    '[형] 흔한\n [형] 공통의',
    '[동] 비교하다',
    '[명] 경쟁\n[명] 대회',
    '[부] 완전히',
    '[명] 성분, 구성요소',
    '[동] 구성하다',
    '[동] 이해하다',
    '[동] 집중하다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 3'),
        backgroundColor: Colors.indigo,
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(bottom: 125),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.indigo)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${words[index]}',
                  style: TextStyle(fontSize: 45),
                ),
                Text(
                  '${mean[index]}',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}