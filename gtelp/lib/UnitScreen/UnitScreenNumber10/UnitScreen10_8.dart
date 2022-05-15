import 'package:flutter/material.dart';

class UnitScreen10_8 extends StatelessWidget {
  List<String> words = ['transportation', 'trap', 'treat',
    'tutorial', 'typically', 'ubiquitous',
    'unauthorized', 'unique', 'unit', 'transparent'];
  List<String> mean = [
    '[명] 운송, 교통',
    '[동] 가두다\n[명] 함정',
    '[동] 처리하다, 대우하다',
    '[명] 개인 지도, 사용 지침서',
    '[부] 전형적으로, 보통',
    '[형] 어디에나 있는, 흔한',
    '[형] 무단의, 승인되지 않은',
    '[형] 독특한',
    '[명] 단위\n[명] (아파트의) 호실, 채',
    '[형] 투명한'
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