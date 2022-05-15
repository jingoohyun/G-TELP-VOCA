import 'package:flutter/material.dart';

class UnitScreen6_10 extends StatelessWidget {
  List<String> words = ['associate', 'astronomer', 'attack',
    'attempt', 'attention', 'attitude',
    'attraction', 'audience', 'audit', 'authority'];
  List<String> mean = [
    '[동] ~와 관련짓다, 관련되다\n[형] 준, 부',
    '[명] 천문학자',
    '[동] 공격하다\n[명] 공격',
    '[명] 시도\n[동] 시도하다',
    '[명] 관심, 주의',
    '[명] 태도',
    '[명] 매력\n[명] (관광) 명소',
    '[명] 관객, 청중',
    '[명] 회계 감사',
    '[명] 당국\n[명] 권한, 권위'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 10'),
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