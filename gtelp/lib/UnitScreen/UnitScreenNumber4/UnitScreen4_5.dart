import 'package:flutter/material.dart';

class UnitScreen4_5 extends StatelessWidget {
  List<String> words = ['harmful', 'harsh', 'hesitant',
    'ideal', 'identify', 'illustrate',
    'imitate', 'impact', 'impression', 'improve'];
  List<String> mean = [
    '[형] 해로운',
    '[형] 혹독한, 독한',
    '[형] 망설이는, 주저하는',
    '[형] 이상적인',
    '[동] 식별하다, 구별하다',
    '[동] 시각화하다, 예증하다',
    '[동] 흉내 내다, 모방하다',
    '[명] 영향',
    '[명] 인상',
    '[동] 개선되다, 향상시키다'
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