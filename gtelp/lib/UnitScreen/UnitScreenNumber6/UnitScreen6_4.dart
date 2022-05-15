import 'package:flutter/material.dart';

class UnitScreen6_4 extends StatelessWidget {
  List<String> words = ['steady', 'stick', 'structure',
    'struggle', 'submit', 'succeed',
    'suddenly', 'tempt', 'threat', 'traditional'];
  List<String> mean = [
    '[형] 고정된, 꾸준한',
    '[동] (하던 것을) 계속하다, 붙이다\n[명] 막대',
    '[명] 구조',
    '[동] 애쓰다, 분투하다\n[명] 투쟁, 분투',
    '[동] 제출하다',
    '[동] 성공하다\n[동] 이어받다',
    '[부] 갑자기',
    '[동] 유혹하다, 부추기다',
    '[명] 위협, 협박',
    '[형] 전통적인'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 4'),
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