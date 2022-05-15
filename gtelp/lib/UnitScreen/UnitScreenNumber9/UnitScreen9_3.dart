import 'package:flutter/material.dart';

class UnitScreen9_3 extends StatelessWidget {
  List<String> words = ['movement', 'multiple', 'muscle',
    'mythology', 'nature', 'nerve',
    'nomination', 'notice', 'numerous', 'nurse'];
  List<String> mean = [
    '[명] 움직임',
    '[형] 다수의, 다양한\n[명] 배수',
    '[명] 근육',
    '[명] 신화, 신화학',
    '[명] 본질, 본성',
    '[명] 신경',
    '[명] 지명, 추천',
    '[동] 알아차리다, 주목하다\n[명] 주목, 통지',
    '[형] 수많은',
    '[동] 간호하다, 젖을 먹이다, 돌보다\n[명] 간호사'
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