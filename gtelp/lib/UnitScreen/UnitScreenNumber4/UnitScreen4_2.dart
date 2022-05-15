import 'package:flutter/material.dart';

class UnitScreen4_2 extends StatelessWidget {
  List<String> words = ['excess', 'expand', 'expectation',
    'expend', 'expert', 'expose',
    'fabric', 'failure', 'fairly', 'fancy'];
  List<String> mean = [
    '[형] 초과한, 과도한\n[명] 초과, 과잉',
    '[동] 확장하다',
    '[명] 기대',
    '[동] 소비하다, 지출하다',
    '[명] 전문가',
    '[동] 노출시키다',
    '[명] 천, 직물',
    '[명] 실패',
    '[부] 공정하게, 타당하게',
    '[형] 화려한, 고급의\n[명] 공상'
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