import 'package:flutter/material.dart';

class UnitScreen8_2 extends StatelessWidget {
  List<String> words = ['escape', 'especially', 'evaporate',
    'eventually', 'exclusive', 'excuse',
    'executive', 'exhibit', 'expansion', 'expect'];
  List<String> mean = [
    '[동] 달아나다, 빠져나가다',
    '[부] 특히',
    '[동] 증발하다',
    '[부] 결국, 마침내',
    '[형] 독점적인, 전용의',
    '[명] 변명, 핑계, 구실\n[동] 양해하다, 봐주다',
    '[명] 경영진, 임원\n[형] 경영의, 행정의',
    '[명] 관람, 전시품\n[동] 전시하다',
    '[명] 확장, 팽창',
    '[동] 기대하다, 예상하다'
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