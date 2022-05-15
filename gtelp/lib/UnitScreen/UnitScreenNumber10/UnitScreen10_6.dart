import 'package:flutter/material.dart';

class UnitScreen10_6 extends StatelessWidget {
  List<String> words = ['talented', 'theft', 'transfer',
    'trust', 'unforgettable', 'unusual',
    'usher', 'various', 'virtual', 'witness'];
  List<String> mean = [
    '[형] 재능 있는',
    '[명] 절도, 도난',
    '[동] 편입하다, 옮기다\n[명] 이동, 이체',
    '[명] 신뢰\n[동] 신뢰하다',
    '[형] 잊을 수 없는, 기억에 남는',
    '[형] 특이한, 비범한',
    '[동] 안내하다, 이끌다\n[명] 안내인, 접수원',
    '[형] 다양한',
    '[형] 가상의',
    '[동] 목격하다\n[명] 목격자'
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