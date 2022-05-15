import 'package:flutter/material.dart';

class UnitScreen9_7 extends StatelessWidget {
  List<String> words = ['politician', 'pollen', 'popularity',
    'population', 'populous', 'possess',
    'preacher', 'precise', 'predator', 'prepare'];
  List<String> mean = [
    '[명] 정치인',
    '[명] 꽃가루',
    '[명] 인기',
    '[명] 인구, 개체수',
    '[형] 인구가 조밀한, 개체수가 많은',
    '[동] 가지다, 소유하다',
    '[명] 목사',
    '[형] 정확한, 정밀한',
    '[명] 포식자',
    '[동] 준비하다'
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