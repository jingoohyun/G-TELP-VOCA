import 'package:flutter/material.dart';

class UnitScreen1_6 extends StatelessWidget {
  List<String> words = ['appeal', 'commitment', 'defend',
    'exhausted', 'incomplete', 'occasionally',
    'pain', 'properly', 'risk', 'tender'];
  List<String> mean = [
    '[동] 호소하다, 관심을 끌다\n[명] 호소(력)',
    '[명] 약속, 헌신',
    '[동] 방어하다',
    '[형] 지친, 기진맥진한',
    '[형] 완전하지 않은, 불충분한',
    '[부] 가끔',
    '[명] 고통, 통증',
    '[부] 적절하게, 제대로',
    '[동] ~할 위험이 있다\n[명] 위험, 리스크',
    '[형] 부드러운, 다정한'
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