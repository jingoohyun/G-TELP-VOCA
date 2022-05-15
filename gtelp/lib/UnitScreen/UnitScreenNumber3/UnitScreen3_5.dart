import 'package:flutter/material.dart';

class UnitScreen3_5 extends StatelessWidget {
  List<String> words = ['convenient', 'conversation', 'cooperate',
    'cost', 'counterpart', 'countless',
    'creative', 'customer', 'damage', 'delay'];
  List<String> mean = [
    '[형] 편리한',
    '[명] 대화',
    '[동] 협력하다, 협동하다',
    '[동] 비용이 들게 하다\n[명] 비용, 대가',
    '[명] 동일한 것, 대응물',
    '[형] 셀 수 없는, 무수한',
    '[형] 창의적인',
    '[명] 고객',
    '[동] 손상시키다\n[명] 손상',
    '[동] 미루다, 연기하다\n[명] 지연, 지체'
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