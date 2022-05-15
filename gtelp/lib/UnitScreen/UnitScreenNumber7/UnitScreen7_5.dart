import 'package:flutter/material.dart';

class UnitScreen7_5 extends StatelessWidget {
  List<String> words = ['contact', 'continuous', 'contribute',
    'convey', 'convince', 'coordinate',
    'corporate', 'criminal', 'critic', 'decide'];
  List<String> mean = [
    '[동] 연락하다\n[명] 연락, 접촉',
    '[형] 계속적인, 연속적인',
    '[동] 기여하다, ~의 원인이 되다',
    '[동] 전달하다, 운반하다',
    '[동] 설득하다, 확신시키다',
    '[동] 조정하다',
    '[형] 기업의, 회사의',
    '[형] 범죄의\n[명] 범죄자',
    '[명] 비평가',
    '[동] 결정하다, 결심하다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 5'),
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