import 'package:flutter/material.dart';

class UnitScreen1_10 extends StatelessWidget {
  List<String> words = ['discontinue', 'encourage', 'enthusiasm',
    'essential', 'exclusively', 'express',
    'financial', 'following', 'fossil', 'frequently'];
  List<String> mean = [
    '[동] 중단하다',
    '[동] 권장하다, 격려하다',
    '[명] 열정, 열의',
    '[형] 필수적인',
    '[부] 독점으로, 오직 ~뿐',
    '[동] 표현하다',
    '[형] 재정적인',
    '[전] ~ 후에\n[명] 추종자, 팬',
    '[명] 화석',
    '[부] 자주'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 10'),
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