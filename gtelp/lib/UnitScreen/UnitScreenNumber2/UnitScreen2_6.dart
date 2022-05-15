import 'package:flutter/material.dart';

class UnitScreen2_6 extends StatelessWidget {
  List<String> words = ['ability', 'actually', 'addition',
    'afford', 'aim', 'apparel',
    'apply', 'aspect', 'authorized', 'basis'];
  List<String> mean = [
    '[명] 능력, 할 수 있음',
    '[부] 사실, 실제로',
    '[명] 추가, 더함',
    '[동] (시간,금전의) 여유가 있다',
    '[동] 목표로 하다\n[명] 목표',
    '[명] 옷, 의복',
    '[동] 지원하다\n[동] 적용하다\n[동] 신청하다',
    '[명] 측면, 양상',
    '[형] 승인된, 공인된',
    '[명] 기준, 근거, 기초'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 6'),
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