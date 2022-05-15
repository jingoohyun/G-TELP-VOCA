import 'package:flutter/material.dart';

class UnitScreen5_1 extends StatelessWidget {
  List<String> words = ['neighborhood', 'obviously', 'offer',
    'otherwise', 'performance', 'perspective',
    'photocopy', 'potential', 'prevent', 'prompt'];
  List<String> mean = [
    '[명] 동네, 이웃, 인근',
    '[부] 분명히, 명백하게',
    '[동] 제공하다, 제안하다',
    '[부] 그렇지 않으면, 다른 방식으로는',
    '[명] 공연\n[명] 성과, 수행',
    '[명] 관점, 시각',
    '[명] 사본\n[동] 복사하다',
    '[형] 잠재적인\n[명] 잠재성, 가능성',
    '[동] 못하게 막다, 예방하다',
    '[형] 신속한\n[동] 유발하다, 촉구하다'
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