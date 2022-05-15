import 'package:flutter/material.dart';

class UnitScreen8_10 extends StatelessWidget {
  List<String> words = ['lack', 'last', 'lean',
    'likewise', 'limited', 'linguist',
    'maintain', 'major', 'mammal', 'management'];
  List<String> mean = [
    '[동] 부족하다\n[명] 부족, 결여',
    '[동] 지속하다, 오래가다\n[형] 지난\n[형] 마지막의',
    '[형] 야윈, 기름기 적은',
    '[부] 마찬가지로',
    '[형] 제한된, 많지 않은',
    '[명] 언어학자',
    '[동] 관리하다, 유지하다',
    '[형] 주요한, 주된\n[명] 전공',
    '[명] 포유류, 포유동물',
    '[명] 관리, 경영(진)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 10'),
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