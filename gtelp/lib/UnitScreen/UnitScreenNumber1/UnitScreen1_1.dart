import 'package:flutter/material.dart';

class UnitScreen1_1 extends StatelessWidget {
  List<String> words = ['agency', 'anthropology', 'bloom',
    'consider', 'dissect', 'fate',
    'intensely', 'outfit', 'privilege', 'suffer'];
  List<String> mean = [
    '[명] 대행사, 대리점',
    '[명] 인류학',
    '[동] (꽃이) 피다',
    '[동] 고려하다, 감안하다',
    '[동] 해부하다',
    '[명] 운명',
    '[부] 강렬하게, 열심히',
    '[명] 옷, 옷차림',
    '[명] 특권, 특혜',
    '[동] (어려움 등을) 겪다, 앓다'
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