import 'package:flutter/material.dart';

class UnitScreen7_2 extends StatelessWidget {
  List<String> words = ['award', 'bear', 'behavioral',
    'block', 'bold', 'boost',
    'breakdown', 'bribe', 'candidate', 'cease'];
  List<String> mean = [
    '[동] (상 등을) 주다, 수여하다\n[명] 상',
    '[동] 낳다, 출산하다\n[동] 견디다',
    '[형] 태도의, 행동에 관한',
    '[동] 막다, 차단하다',
    '[형] 대담한',
    '[동] 증진시키다, 향상시키다',
    '[명] 쇠약, 몰락, 고장',
    '[명] 뇌물\n[동] 뇌물을 주다',
    '[명] 지원자, 후보자',
    '[동] 끊다, 중단하다'
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