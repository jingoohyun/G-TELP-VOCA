import 'package:flutter/material.dart';

class UnitScreen4_1 extends StatelessWidget {
  List<String> words = ['exchange', 'existing', 'fear',
    'fortune', 'fraction', 'gather',
    'glow', 'gradually', 'guidance', 'illusion'];
  List<String> mean = [
    '[동] 교환하다\n[명] 교환',
    '[형] 기존의, 존재하는',
    '[명] 두려움, 겁',
    '[명] 재산, 거금, 운',
    '[명] 분수, 부분, 일부',
    '[동] 모으다, 수집하다',
    '[명] 불빛\n[동] 은은하게 빛나다',
    '[부] 서서히, 점점',
    '[명] 지도, 안내',
    '[명] 착각, 환상'
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