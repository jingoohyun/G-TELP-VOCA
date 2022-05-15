import 'package:flutter/material.dart';

class UnitScreen2_3 extends StatelessWidget {
  List<String> words = ['pediatrician', 'poorly', 'principal',
    'product', 'promise', 'prune',
    'pure', 'quarterly', 'range', 'rash'];
  List<String> mean = [
    '[명] 소아과 의사',
    '[부] 형편없이',
    '[명] 교장\n[형] 주요한',
    '[명] 제품, 상품',
    '[동] 약속하다\n[명] 약속',
    '[동] 가지치기하다',
    '[형] 순수한',
    '[형] 분기의, 분기별',
    '[명] 범위\n[동] (~에서 ~까지) 범위에 이르다',
    '[명] 발진, 뾰루지\n[형] 경솔한, 성급한'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 3'),
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