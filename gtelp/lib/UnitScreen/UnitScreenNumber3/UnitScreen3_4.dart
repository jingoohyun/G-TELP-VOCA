import 'package:flutter/material.dart';

class UnitScreen3_4 extends StatelessWidget {
  List<String> words = ['concern', 'confidence', 'confidential',
    'conform', 'consist', 'constantly',
    'consumer', 'contemporary', 'content', 'contrasting'];
  List<String> mean = [
    '[동] ~에 관련되다\n[명] 우려, 걱정',
    '[명] 자신감',
    '[형] 기밀의, 비밀의',
    '[동] 순응하다',
    '[동] 구성되다',
    '[부] 지속적으로, 계속',
    '[명] 소비자',
    '[형] 현대적인, 동시대의',
    '[명] 내용, 내용물',
    '[형] 상반되는, 반대되는'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 4'),
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