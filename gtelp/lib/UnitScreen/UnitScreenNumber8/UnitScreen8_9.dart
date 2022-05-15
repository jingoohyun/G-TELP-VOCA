import 'package:flutter/material.dart';

class UnitScreen8_9 extends StatelessWidget {
  List<String> words = ['intense', 'invent', 'invest',
    'investigation', 'invite', 'involve',
    'isolation', 'issue', 'knowledge', 'labor'];
  List<String> mean = [
    '[형] 강렬한, 격렬한',
    '[동] 발명하다',
    '[동] 투자하다',
    '[명] 탐구, 조사',
    '[동] 초대하다',
    '[동] 관련되게 하다, 포함하다',
    '[명] 고립',
    '[명] 문제, 발행\n[동] 발급하다, 발행하다',
    '[명] 지식',
    '[명] 산통\n[명] 노동'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 9'),
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