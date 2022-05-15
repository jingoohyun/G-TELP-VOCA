import 'package:flutter/material.dart';

class UnitScreen10_3 extends StatelessWidget {
  List<String> words = ['response', 'restore', 'restructure',
    'retire', 'revenge', 'revise',
    'rotate', 'route', 'sculpture', 'secure'];
  List<String> mean = [
    '[명] 답변, 응답',
    '[동] 회복하다, 복구하다',
    '[동] 개편하다, 재구성하다',
    '[동] 물러나다, 은퇴하다',
    '[명] 복수\n[동] 복수하다',
    '[동] 수정하다, 개정하다',
    '[동] 회전하다',
    '[명] 경로, 방법',
    '[명] 조각상',
    '[동] 확보하다, 안전하게 하다\n[형] 안전한'
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