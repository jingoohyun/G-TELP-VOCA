import 'package:flutter/material.dart';

class UnitScreen8_1 extends StatelessWidget {
  List<String> words = ['evacuate', 'evidence', 'existence',
    'extend', 'fascinate', 'finding',
    'flavor', 'found', 'fund', 'guilty'];
  List<String> mean = [
    '[동] 대피시키다',
    '[명] 증거',
    '[명] 존제, 실존, 생존',
    '[동] 뻗다, 연장하다',
    '[동] 매료시키다',
    '[명] (조사,연구의) 결과, 발견',
    '[명] 맛, 풍미',
    '[동] 설립하다, 창립하다',
    '[명] 자금, 기금',
    '[형] 유죄의\n[형] 죄책감을 느끼는'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 1'),
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