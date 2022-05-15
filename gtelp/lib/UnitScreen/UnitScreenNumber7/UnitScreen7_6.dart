import 'package:flutter/material.dart';

class UnitScreen7_6 extends StatelessWidget {
  List<String> words = ['dedication', 'develop', 'diminish',
    'discrepancy', 'distinct', 'divide',
    'drain', 'emergency', 'enrage', 'entertain'];
  List<String> mean = [
    '[명] 헌신',
    '[동] 개발하다\n[동] 발전시키다',
    '[동] 약화시키다, 감소시키다',
    '[명] 불일치, 모순',
    '[형] 별개의, 다른, 독특한',
    '[동] 나누다, 분배하다',
    '[동] 배수하다, 물기를 빼다',
    '[명] 비상사태, 위급, 응급',
    '[동] 격분하게 하다',
    '[동] 즐겁게 하다, 환대하다'
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