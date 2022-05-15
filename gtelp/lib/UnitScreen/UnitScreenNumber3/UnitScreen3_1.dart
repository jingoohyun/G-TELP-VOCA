import 'package:flutter/material.dart';

class UnitScreen3_1 extends StatelessWidget {
  List<String> words = ['budget', 'career', 'certain',
    'certificate', 'coincidence', 'compliment',
    'conflict', 'costly', 'deal', 'decrease'];
  List<String> mean = [
    '[명] 예산',
    '[명] 경력, 직업',
    '[형] 어느 정도의, 특정한\n[형] 확신하는',
    '[명] 증명서, 자격증',
    '[명] 우연, 우연의 일치',
    '[명] 찬사, 칭찬',
    '[명] 갈등',
    '[형] 비용이 많이 드는, 비싼',
    '[동] 다루다, 처리하다\n[명] 거래',
    '[동] 감소하다, 줄이다\n[명] 감소, 하락'
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