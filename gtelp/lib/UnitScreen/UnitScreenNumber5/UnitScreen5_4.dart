import 'package:flutter/material.dart';

class UnitScreen5_4 extends StatelessWidget {
  List<String> words = ['personnel', 'physical', 'pile',
    'plenty', 'policy', 'possession',
    'pour', 'practical', 'practice', 'prefer'];
  List<String> mean = [
    '[명] 인원, 요원',
    '[형] 신체적인\n[형] 물리적인',
    '[동] 쌓이다, 쌓아올리다\n[명] 더미',
    '[명] 많음, 풍부',
    '[명] 방침, 정책',
    '[명] 소유, 소유물',
    '[동] 붓다',
    '[형] 실용적인, 실기의',
    '[명] 관행, 관례\n[동] 실천하다, 연습하다',
    '[동] 선호하다'
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