import 'package:flutter/material.dart';

class UnitScreen3_7 extends StatelessWidget {
  List<String> words = ['delete', 'delightful', 'description',
    'desire', 'despite', 'destination',
    'determine', 'device', 'differentiate', 'dimly'];
  List<String> mean = [
    '[동] 지우다, 삭제하다',
    '[형] 즐거운, 기분 좋은',
    '[명] 설명, 묘사',
    '[명] 열망, 욕구\n[동] 원하다, 바라다',
    '[전] ~에도 불구하고',
    '[명] 목적지',
    '[동] 결정하다\n[동] 알아내다',
    '[명] 장치, 기기',
    '[동] 차별화하다, 구별하다',
    '[부] 어둡게'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 7'),
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