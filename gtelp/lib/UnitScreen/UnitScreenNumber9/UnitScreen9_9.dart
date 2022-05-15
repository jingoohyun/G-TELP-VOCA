import 'package:flutter/material.dart';

class UnitScreen9_9 extends StatelessWidget {
  List<String> words = ['qualify', 'radiation', 'raise',
    'rampant', 'rapid', 'reasonable',
    'recruit', 'reference', 'refine', 'reflect'];
  List<String> mean = [
    '[동] 자격을 주다, 자격이 있다',
    '[명] 방사, 방사선',
    '[동] (기금 등을) 모으다\n[동] (문제 등을) 제기하다',
    '[형] 만연한, 마구 퍼지는',
    '[형] 빠른',
    '[형] 합리적인, 이성적인',
    '[동] 채용하다, 영입하다',
    '[명] 추천인, 참조\n[동] 참조하다, 언급하다',
    '[동] 개선하다, 정제하다',
    '[동] 반영하다, 반사하다'
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