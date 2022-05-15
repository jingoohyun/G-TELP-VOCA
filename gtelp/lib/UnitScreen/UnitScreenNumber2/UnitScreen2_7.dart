import 'package:flutter/material.dart';

class UnitScreen2_7 extends StatelessWidget {
  List<String> words = ['absorb', 'accept', 'accommodate',
    'accordingly', 'achieve', 'adjust',
    'adopt', 'advance', 'affect', 'agenda'];
  List<String> mean = [
    '[동] 흡수하다, 흡수되다',
    '[동] 받아들이다\n[동] 인정하다',
    '[동] 수용하다',
    '[부] 그에 따라, 그에 맞게',
    '[동] 달성하다, 성취하다',
    '[동] 조절하다, 맞추다',
    '[동] 입양하다\n[동] 채택하다',
    '[명] 진전, 발전\n[동] 발전시키다, 진보하다',
    '[동] 영향을 미치다',
    '[명] 안건, 의제'
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