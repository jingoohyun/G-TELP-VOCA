import 'package:flutter/material.dart';

class UnitScreen2_5 extends StatelessWidget {
  List<String> words = ['straight', 'strand', 'suggest',
    'surplus', 'term', 'thoroughly',
    'unfortunately', 'variety', 'willing', 'withhold'];
  List<String> mean = [
    '[형] 연속의, 곧은\n[부] 연속으로',
    '[동] 발을 묶다, 오도 가도 못하게 하다',
    '[동] 제안하다\n[동] 보여주다',
    '[명] 잉여\n[형] 잉여의',
    '[명] 측면, 조건',
    '[부] 철저하게, 완전히',
    '[부] 안타깝게도, 아쉽게도',
    '[명] 다양성',
    '[형] 기꺼이 ~ 하는',
    '[동] 보류하다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 5'),
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