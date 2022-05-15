import 'package:flutter/material.dart';

class UnitScreen4_8 extends StatelessWidget {
  List<String> words = ['instruction', 'instrument', 'insurance',
    'intentionally', 'interact', 'intermediate',
    'join', 'landscape', 'lately', 'latest'];
  List<String> mean = [
    '[명] 교육, 훈련\n[명] 설명서, 지시',
    '[명] 도구, 기구',
    '[명] 보험',
    '[부] 의도적으로, 고의로',
    '[동] 교류하다, 상호작용하다',
    '[형] 중급의',
    '[동] 가입하다, 함께 하다',
    '[명] 조경, 풍경',
    '[부] 최근에',
    '[형] 최신의'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 8'),
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