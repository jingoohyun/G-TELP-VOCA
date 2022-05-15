import 'package:flutter/material.dart';

class UnitScreen1_3 extends StatelessWidget {
  List<String> words = ['abroad', 'conference', 'decline',
    'flood', 'gain', 'misuse',
    'overall', 'regularly', 'spill', 'success'];
  List<String> mean = [
    '[부] 해외로, 외국으로',
    '[명] 학술 대회, 학회',
    '[동] 감소하다\n[동] 거절하다\n[명] 감소, 하락',
    '[명] 홍수, 범람\n[동] 침수시키다',
    '[동] 얻다, 쌓다',
    '[동] 남용하다, 악용하다\n[명] 남용, 오용',
    '[형] 전반적인\n[부] 전반적으로',
    '[부] 규칙적으로, 정기적으로',
    '[동] 쏟다, 엎지르다\n[명] 유출',
    '[명] 성공'
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