import 'package:flutter/material.dart';

class UnitScreen7_8 extends StatelessWidget {
  List<String> words = ['dictate', 'difference', 'disappearance',
    'disaster', 'display', 'disregard',
    'disruptive', 'dissolve', 'distribute', 'diverse'];
  List<String> mean = [
    '[동] 받아 적게 하다, 말하다\n[동] 지시하다',
    '[명] (의견) 차이',
    '[명] 사라짐, 소멸',
    '[명] 재난, 재해',
    '[명] 전시\n[명] (감정의) 과시\n[동] 전시하다',
    '[동] 무시하다, 경시하다',
    '[형] 지장을 주는, 방해하는',
    '[동] 해체하다, 용해되다',
    '[동] 배포하다, 유통하다',
    '[형] 다양한'
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