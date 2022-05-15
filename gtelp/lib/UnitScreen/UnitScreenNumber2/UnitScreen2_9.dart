import 'package:flutter/material.dart';

class UnitScreen2_9 extends StatelessWidget {
  List<String> words = ['assignment', 'assist', 'attach',
    'attain', 'attend', 'authentic',
    'available', 'average', 'aware', 'awful'];
  List<String> mean = [
    '[명] 과제, 숙제',
    '[동] 돕다',
    '[동] 붙이다, 부착하다',
    '[동] 달성하다, 이루다',
    '[동] 참석하다, 다니다\n[동] 처리하다, 응대하다',
    '[형] 진짜인, 진정한',
    '[형] (사물 등이) 살 수 있는, 이용 가능한',
    '[명] 평균',
    '[형] 알고 있는, 인지하는',
    '[형] 끔찍한, 지독한'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 9'),
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