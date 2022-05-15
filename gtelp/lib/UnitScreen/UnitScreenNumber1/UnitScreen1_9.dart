import 'package:flutter/material.dart';

class UnitScreen1_9 extends StatelessWidget {
  List<String> words = ['compete', 'complain', 'corruption',
    'courtesy', 'creation', 'current',
    'decade', 'demand', 'demanding', 'difficulty'];
  List<String> mean = [
    '[동] 경쟁하다',
    '[동] 불평하다, 항의하다\n[동] (통증 등을) 호소하다',
    '[명] 부패',
    '[명] 예의',
    '[명] 만들어냄, 창작',
    '[형] 현재의, 최근의\n[명] 흐름, 추세',
    '[명] 10년',
    '[명] 요구, 수요\n[동] 요구하다',
    '[형] 까다로운, 요구가 많은',
    '[명] 어려움'
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