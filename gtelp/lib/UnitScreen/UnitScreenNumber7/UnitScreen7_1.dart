import 'package:flutter/material.dart';

class UnitScreen7_1 extends StatelessWidget {
  List<String> words = ['balance', 'boast', 'bundle',
    'chain', 'client', 'communicate',
    'conclusion', 'consideration', 'controversial', 'criticize'];
  List<String> mean = [
    '[명] 잔액, 균형\n[동] ~의 균형을 맞추다',
    '[동] 자랑하다, 뽐내다',
    '[동] 묶음으로 제공하다\n[명] 묶음, 다발',
    '[명] 일련, 연속',
    '[명] 고객',
    '[동] (의사)소통하다',
    '[명] 결론, 결말',
    '[명] 고려, 숙고',
    '[형] 논란이 되는, 논쟁의',
    '[동] 비판하다, 비평하다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 1'),
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