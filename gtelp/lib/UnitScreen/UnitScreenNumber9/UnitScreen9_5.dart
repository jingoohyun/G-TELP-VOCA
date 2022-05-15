import 'package:flutter/material.dart';

class UnitScreen9_5 extends StatelessWidget {
  List<String> words = ['overlook', 'oversee', 'oxygen',
    'participant', 'patent', 'perform',
    'perk', 'permit', 'personalize', 'phenomenon'];
  List<String> mean = [
    '[동] 간과하다',
    '[동] 감독하다',
    '[명] 산소',
    '[명] 참가자',
    '[동] 특허를 흭득하다\n[명] 특허',
    '[동] 수행하다\n[동] 공연하다',
    '[명] 특혜',
    '[명] 허가\n[동] 허가하다',
    '[동] 개인화하다',
    '[명] 현상'
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