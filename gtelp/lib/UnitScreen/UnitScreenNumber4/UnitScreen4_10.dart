import 'package:flutter/material.dart';

class UnitScreen4_10 extends StatelessWidget {
  List<String> words = ['material', 'mature', 'mean',
    'measure', 'mediator', 'mixture',
    'natural', 'nearly', 'necessary', 'negative'];
  List<String> mean = [
    '[명] 자료, 재료\n[명] 소재, 물질',
    '[형] 성숙한, 숙련된',
    '[동] 의미하다, ~라는 뜻이다\n[형] 못된',
    '[동] 측정하다\n[명] 조치, 대책',
    '[명] 중재자, 조정자',
    '[명] 혼합, 혼합물',
    '[형] 자연적인, 천연의',
    '[부] 거의',
    '[형] 필요한, 필수적인',
    '[형] 부정적인'
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