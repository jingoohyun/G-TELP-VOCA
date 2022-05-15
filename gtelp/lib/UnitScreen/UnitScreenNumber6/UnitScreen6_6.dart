import 'package:flutter/material.dart';

class UnitScreen6_6 extends StatelessWidget {
  List<String> words = ['abundant', 'account', 'address',
    'affair', 'agriculture', 'anesthesia',
    'apparent', 'artificial', 'assume', 'attract'];
  List<String> mean = [
    '[형] 풍부한',
    '[명] 계정, 계좌\n[명] 설명, 기록',
    '[동] 해결하다, 처리하다\n[명] 주소, 연설',
    '[명] (공적으로 중요한) 일, 문제',
    '[명] 농업',
    '[명] 마취',
    '[형] 명백한, 분명한',
    '[형] 인공의, 인조의',
    '[동] ~라고 생각하다, 가정하다\n[동] 책임을 지다',
    '[동] 끌어들이다, 이끌다'
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