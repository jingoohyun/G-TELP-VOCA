import 'package:flutter/material.dart';

class UnitScreen6_3 extends StatelessWidget {
  List<String> words = ['silence', 'simply', 'situation',
    'sleek', 'slightly', 'slot',
    'soil', 'solution', 'spend', 'spread'];
  List<String> mean = [
    '[명] 침묵, 말없음',
    '[부] 단순히, 그저 (~하기만)',
    '[명] 상황',
    '[형] 날렵한, 맵시 있는',
    '[부] 약간',
    '[명] 자리, 시간\n[명] (끼우는) 홈',
    '[명] 토양, 흙',
    '[명] 해결책',
    '[동] (시간을) 보내다, (돈을) 쓰다',
    '[동] 퍼뜨리다, 펼치다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 3'),
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