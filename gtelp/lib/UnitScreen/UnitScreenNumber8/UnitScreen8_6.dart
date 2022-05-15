import 'package:flutter/material.dart';

class UnitScreen8_6 extends StatelessWidget {
  List<String> words = ['horizontal', 'inclined', 'individual',
    'infrared', 'instruct', 'intent',
    'invoice', 'juvenile', 'length', 'literature'];
  List<String> mean = [
    '[형] 수평의, 가로의',
    '[형] ~의 경향이 있는',
    '[명] 개인\n[형] 개개의, 개인의',
    '[형] 적의선의',
    '[동] 지시하다',
    '[형] 집중된, 전념하고 있는\n[명] 의도, 목적',
    '[명] 송장, 청구서',
    '[명] 청소년(기)\n[형] 젊은, 청소년의',
    '[명] 길이',
    '[명] 문학'
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