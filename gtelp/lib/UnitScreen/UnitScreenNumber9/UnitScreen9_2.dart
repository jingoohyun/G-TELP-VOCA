import 'package:flutter/material.dart';

class UnitScreen9_2 extends StatelessWidget {
  List<String> words = ['mansion', 'manufacture', 'mass',
    'means', 'mention', 'method',
    'military', 'millionaire', 'modify', 'molecule'];
  List<String> mean = [
    '[명] 대저택',
    '[동] 제조하다\n[명] 제조',
    '[형] 대량의, 대중의\n[명] 다수, 대중',
    '[명] 수단, 방법',
    '[동] 언급하다',
    '[명] 방법',
    '[형] 군사의, 무력의\n[명] 군인들, 군대',
    '[명] 백만장자',
    '[동] 수정하다, 변경하다',
    '[명] 분자'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 2'),
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