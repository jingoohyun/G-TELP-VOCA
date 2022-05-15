import 'package:flutter/material.dart';

class UnitScreen6_2 extends StatelessWidget {
  List<String> words = ['scent', 'security', 'semester',
    'session', 'settle', 'shade',
    'shake', 'share', 'shelter', 'shrub'];
  List<String> mean = [
    '[명] 냄새, 향',
    '[명] 보안, 안전',
    '[명] 학기',
    '[명] 기간, 시간',
    '[동] 정착하다, 안주하다\n[동] 해결하다',
    '[명] 그늘, 음영',
    '[동] 흔들다, 흔들리다',
    '[동] 공유하다\n[명] 몫, 주식',
    '[명] 은신처, 보호소',
    '[명] 관목'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 2'),
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