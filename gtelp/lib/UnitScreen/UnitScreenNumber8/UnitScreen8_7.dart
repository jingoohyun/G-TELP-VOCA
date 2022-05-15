import 'package:flutter/material.dart';

class UnitScreen8_7 extends StatelessWidget {
  List<String> words = ['hire', 'hollow', 'honor',
    'immigrant', 'implement', 'impress',
    'inability', 'independent', 'indicate', 'industry'];
  List<String> mean = [
    '[동] 고용하다',
    '[형] 속이 빈',
    '[명] 영광, 영예, 명예\n[동] 존경하다',
    '[명] 이민자',
    '[동] 시행하다, 이행하다',
    '[동] 감명을 주다, 깊은 인상을 주다',
    '[명] 무능, ~하지 못함',
    '[형] 독립적인',
    '[동] 나타내다, (의향을) 밝히다',
    '[명] 산업'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 7'),
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