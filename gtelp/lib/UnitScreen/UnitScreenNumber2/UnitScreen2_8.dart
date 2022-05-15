import 'package:flutter/material.dart';

class UnitScreen2_8 extends StatelessWidget {
  List<String> words = ['agreement', 'alert', 'alone',
    'ambience', 'amount', 'antiviral',
    'appealing', 'appearance', 'appreciate', 'approve'];
  List<String> mean = [
    '[명] 동의, 합의',
    '[동] 경고하다\n[형] 민첩한',
    '[부] 단지 ~만, 홀로\n[형] 혼자인',
    '[명] 분위기',
    '[명] 양\n[명] 금액',
    '[형] 항바이러스의',
    '[형] 매력적인, 호소하는',
    '[명] 외모, 등장',
    '[동] (진가를) 인정하다, 인식하다',
    '[동] 승인하다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 8'),
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