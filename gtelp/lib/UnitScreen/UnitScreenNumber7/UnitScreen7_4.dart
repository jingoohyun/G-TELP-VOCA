import 'package:flutter/material.dart';

class UnitScreen7_4 extends StatelessWidget {
  List<String> words = ['compel', 'competitive', 'complaint',
    'complement', 'complete', 'condition',
    'confident', 'confuse', 'congregate', 'constellation'];
  List<String> mean = [
    '[동] 강요하다, 강제하다',
    '[형] 경쟁력 있는',
    '[명] 불평, 불만 (사항)',
    '[동] 보완하다, 보충하다\n[명] 보완',
    '[형] 완전한\n[동] 완성하다, 끝마치다',
    '[명] 상태, 조건',
    '[형] 확신하는, 자신이 있는',
    '[동] 혼란시키다, 헷갈리게 하다',
    '[동] 모이다',
    '[명] 별자리'
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