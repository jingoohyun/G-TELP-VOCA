import 'package:flutter/material.dart';

class UnitScreen1_2 extends StatelessWidget {
  List<String> words = ['algebra', 'barely', 'claim',
    'disappointed', 'entirely', 'geometric',
    'nap', 'premiere', 'recognize', 'stuck'];
  List<String> mean = [
    '[명] 대수학',
    '[부] 거의 ~않게',
    '[동] 주장하다\n[명] 주장, 청구',
    '[형] 실망한',
    '[부] 완전히, 전적으로',
    '[부] 기하학적인',
    '[명] 낮잠',
    '[동] 개봉하다, 초연하다\n[명] 시사회, 초연',
    '[동] 인정하다, 알아보다',
    '[형] 갇힌, 막힌, 끼인'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 2'),
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