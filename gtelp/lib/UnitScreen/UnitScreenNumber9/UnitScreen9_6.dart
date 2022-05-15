import 'package:flutter/material.dart';

class UnitScreen9_6 extends StatelessWidget {
  List<String> words = ['philosophy', 'portion', 'preference',
    'process', 'publish', 'query',
    'recently', 'refrigerate', 'regulate', 'related'];
  List<String> mean = [
    '[명] 철학',
    '[명] 부분, 일부',
    '[명] 선호',
    '[명] 과정, 절차, 공정\n[동] 처리하다',
    '[동] 발표하다, 출판하다',
    '[명] 문의, 질문\n[동] 질문하다',
    '[부] 최근에',
    '[동] 냉장하다',
    '[동] 규제하다',
    '[형] 동족 관계의\n[형] 관련된'
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