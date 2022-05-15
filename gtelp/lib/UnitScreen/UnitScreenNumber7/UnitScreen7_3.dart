import 'package:flutter/material.dart';

class UnitScreen7_3 extends StatelessWidget {
  List<String> words = ['charity', 'chemical', 'circular',
    'cite', 'citizen', 'climate',
    'cluster', 'collaborate', 'commission', 'commonly'];
  List<String> mean = [
    '[명] 자선, 자선 단체',
    '[형] 화학의\n[명] 화학 물질',
    '[형] 원형의',
    '[동] 인용하다',
    '[명] 시민',
    '[명] 기후',
    '[명] 무리, 떼, 집단',
    '[동] 협업하다',
    '[동] 의뢰하다, 위임하다\n[명] 위원회, 수수료',
    '[부] 흔히, 일반적으로, 보통'
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