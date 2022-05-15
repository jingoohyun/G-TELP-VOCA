import 'package:flutter/material.dart';

class UnitScreen6_7 extends StatelessWidget {
  List<String> words = ['abdomen', 'access', 'accomplish',
    'accounting', 'achievement', 'acquire',
    'actual', 'admire', 'adoptive', 'advanced'];
  List<String> mean = [
    '[명] (곤충의) 복부',
    '[명] 접속, 접근',
    '[동] 달성하다, 성취하다',
    '[명] 회계',
    '[명] 업적, 성취',
    '[동] 얻다, 흭득하다\n[동] 인수하다',
    '[형] 실제의',
    '[동] 감탄하다, 존경하다\n[동] 높이 평가하다',
    '[형] 입양의, 양~',
    '[형] 선진의, 고급의'
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