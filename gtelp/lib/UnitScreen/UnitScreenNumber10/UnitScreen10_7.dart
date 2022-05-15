import 'package:flutter/material.dart';

class UnitScreen10_7 extends StatelessWidget {
  List<String> words = ['survey', 'survival', 'suspected',
    'technical', 'temperature', 'tend',
    'thesis', 'thorax', 'thunderstorm', 'transaction'];
  List<String> mean = [
    '[명] (설문) 조사\n[동] 조사하다',
    '[명] 생존',
    '[형] 의심받는, 혐의가 있는',
    '[형] 기술의, 기술적',
    '[명] 온도',
    '[동] ~하는 경향이 있다, ~하기 쉽다',
    '[명] 논문',
    '[명] (곤충의) 흉부',
    '[명] 뇌우',
    '[명] 거래'
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