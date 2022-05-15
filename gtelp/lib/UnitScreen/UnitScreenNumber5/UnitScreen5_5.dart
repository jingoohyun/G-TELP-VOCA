import 'package:flutter/material.dart';

class UnitScreen5_5 extends StatelessWidget {
  List<String> words = ['pressure', 'previous', 'principle',
    'priority', 'probably', 'productive',
    'profit', 'progressive', 'promising', 'promotion'];
  List<String> mean = [
    '[동] 압력을 가하다\n[명] 압력, 강요',
    '[형] 이전의',
    '[명] 원칙, 원리',
    '[명] 우선순위',
    '[부] 아마도, 대개는',
    '[형] 생산적인',
    '[명] 이익, 이점',
    '[형] 점진적인',
    '[형] 유망한, 촉망되는',
    '[명] 승진, 홍보, 증진'
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