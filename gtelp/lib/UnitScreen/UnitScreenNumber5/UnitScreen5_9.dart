import 'package:flutter/material.dart';

class UnitScreen5_9 extends StatelessWidget {
  List<String> words = ['relieve', 'rely', 'report',
    'represent', 'reputation', 'resistance',
    'resolution', 'responsibility', 'result', 'resume'];
  List<String> mean = [
    '[동] 완화하다, 풀다',
    '[동] 의존하다, 의지하다',
    '[동] 신고하다, 보고하다\n[명] 보고서, 보고',
    '[동] 나타내다, 대표하다',
    '[명] 평판',
    '[명] 저항',
    '[명] 해상도, 선명도\n[명] 결심, 해결',
    '[명] 책임',
    '[동] 결과를 낳다, ~한 결과가 되다\n[명] 결과',
    '[명] 이력서\n[동] 재개하다'
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