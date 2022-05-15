import 'package:flutter/material.dart';

class UnitScreen1_4 extends StatelessWidget {
  List<String> words = ['advice', 'approach', 'breathe',
    'definitely', 'eclipse', 'force',
    'luxurious', 'petition', 'quit', 'strict'];
  List<String> mean = [
    '[명] 조언, 충고',
    '[동] 다가오다, 접근하다\n[명] 접근(법)',
    '[동] 숨쉬다, 호흡하다',
    '[부] 분명히, 확실히',
    '[명] 일식, 월식',
    '[동] 강요하다\n[명] 힘',
    '[형] 사치스러운, 호화로운',
    '[동] 청원하다\n[명] 청원(서), 탄원(서)',
    '[동] 그만두다',
    '[형] 엄격한'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 4'),
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