import 'package:flutter/material.dart';

class UnitScreen8_4 extends StatelessWidget {
  List<String> words = ['figure', 'finance', 'firm',
    'flame', 'flexibility', 'flirt',
    'fondness', 'foster', 'fraud', 'freight'];
  List<String> mean = [
    '[명] 인물\n[명] 수치',
    '[명] 재정, 금융\n[동] 자금을 대다',
    '[명] 회사, 기업\n[형] 확고한',
    '[명] 불꽃',
    '[명] 유연성, 융통성',
    '[동] 시시덕거리다, 추파를 던지다',
    '[명] 좋아함, 애정',
    '[형] 수양의\n[동] 양육하다, 기르다',
    '[명] 사기',
    '[명] 화물'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 4'),
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