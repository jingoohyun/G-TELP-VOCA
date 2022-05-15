import 'package:flutter/material.dart';

class UnitScreen3_8 extends StatelessWidget {
  List<String> words = ['dine', 'direct', 'disagree',
    'discipline', 'discount', 'discover',
    'distance', 'distinguish', 'distracted', 'donate'];
  List<String> mean = [
    '[동] 식사하다',
    '[동] 안내하다, 지시하다\n[형] 직접적인',
    '[동] 의견이 다르다, 일치하지 않다',
    '[명] 훈련, (학문의) 분야\n[동] 훈육하다',
    '[명] 할인\n[동] 할인하다',
    '[동] 발견하다, 찾다',
    '[명] 거리',
    '[동] 구별하다',
    '[형] 산만해진, 집중이 흐트러진',
    '[동] 기부하다, 기증하다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 8'),
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