import 'package:flutter/material.dart';

class UnitScreen10_9 extends StatelessWidget {
  List<String> words = ['unnoticed', 'unsavory', 'unveil',
    'upcoming', 'urban', 'value',
    'vandalize', 'vanity', 'vehicle', 'venture'];
  List<String> mean = [
    '[형] 주목받지 못한',
    '[형] 불미스러운',
    '[동] 공개하다, 밝히다',
    '[형] 다가오는, 곧 있을',
    '[형] 도시의, 도시적인',
    '[동] 가치를 두다, 중요시하다\n[명] 가치',
    '[동] (문화,예술을) 파괴하다, 훼손하다',
    '[명] 허영심, 자만',
    '[명] 차량\n[명] 수단, 매체',
    '[명] 벤처, 사업'
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