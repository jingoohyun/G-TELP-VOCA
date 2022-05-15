import 'package:flutter/material.dart';

class UnitScreen5_8 extends StatelessWidget {
  List<String> words = ['reach', 'rebate', 'recommend',
    'recruitment', 'reduce', 'refund',
    'register', 'rehearsal', 'relax', 'relevant'];
  List<String> mean = [
    '[동] 닿다, 도달하다\n[명] 손이 닿는 거리',
    '[명] 할인, 환급',
    '[동] 추천하다, 권유하다',
    '[명] 채용',
    '[동] 줄이다, 감소시키다',
    '[명] 환불',
    '[동] 등록하다',
    '[명] 예행연습, 시연',
    '[동] 편히 쉬다, 긴장을 풀다',
    '[형] 관련 있는'
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