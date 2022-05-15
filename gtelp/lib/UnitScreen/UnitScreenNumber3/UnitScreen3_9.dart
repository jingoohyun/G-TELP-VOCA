import 'package:flutter/material.dart';

class UnitScreen3_9 extends StatelessWidget {
  List<String> words = ['draft', 'drift', 'eager',
    'earn', 'edition', 'electronic',
    'element', 'embarrassed', 'emotion', 'employee'];
  List<String> mean = [
    '[명] 초안, 초고',
    '[동] (물,공기에) 떠다니다, 표류하다',
    '[형] 열망하는',
    '[동] (돈을) 벌다\n[동] (이득을) 얻다',
    '[명] (출간된) 판, 호',
    '[형] 전자의',
    '[명] 요소, 요인\n[명] 비바람, 악천후',
    '[형] 난처한, 당황한',
    '[명] 감정',
    '[명] 직원'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 9'),
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