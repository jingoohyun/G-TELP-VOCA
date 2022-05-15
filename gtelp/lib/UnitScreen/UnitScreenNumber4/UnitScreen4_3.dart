import 'package:flutter/material.dart';

class UnitScreen4_3 extends StatelessWidget {
  List<String> words = ['fault', 'fee', 'fertilizer',
    'field', 'fit', 'flexible',
    'form', 'fragrance', 'fuel', 'function'];
  List<String> mean = [
    '[명] 잘못, 책임, 결점',
    '[명] 요금, 학비',
    '[명] 비료',
    '[명] 분야, 현장',
    '[동] 맞다\n[형] 적합한, 건강한',
    '[형] 유연한, 융통성 있는',
    '[명] 형식, 형태, 양식',
    '[명] 향기',
    '[명] 연료\n[동] 연료를 넣다, 기름을 붓다',
    '[명] 기능'
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