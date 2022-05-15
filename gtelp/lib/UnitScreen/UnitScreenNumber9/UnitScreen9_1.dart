import 'package:flutter/material.dart';

class UnitScreen9_1 extends StatelessWidget {
  List<String> words = ['manuscript', 'mark', 'merge',
    'morality', 'nitrogen', 'nutrition',
    'opaque', 'original', 'passionate', 'pedestrian'];
  List<String> mean = [
    '[명] 원고',
    '[동] 표시하다, (기록을) 남기다\n[명] 자국, 기호',
    '[동] 합병하다',
    '[명] 도덕',
    '[명] 질소',
    '[명] 영양, 영양분',
    '[형] 불투명한',
    '[형] 원래의\n[형] 독창적인',
    '[형] 열정적인, 열렬한',
    '[명] 보행자'
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