import 'package:flutter/material.dart';

class UnitScreen8_3 extends StatelessWidget {
  List<String> words = ['experiment', 'expertise', 'explorer',
    'extensive', 'extent', 'extinct',
    'face', 'facility', 'factor', 'feature'];
  List<String> mean = [
    '[동] 실험하다\n[명] 실험',
    '[명] 전문 지식',
    '[명] 탐험가',
    '[형] 광범위한, 포괄적인',
    '[명] 정도',
    '[형] 멸종한',
    '[동] 직면하다',
    '[명] 시설, 설비',
    '[명] 요인, 요소',
    '[동] 특징으로 나타나다\n[명] 특징, 기능'
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