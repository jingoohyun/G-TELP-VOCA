import 'package:flutter/material.dart';

class UnitScreen3_6 extends StatelessWidget {
  List<String> words = ['delivery', 'deposit', 'diploma',
    'disadvantage', 'discuss', 'downside',
    'effect', 'efficient', 'electrical', 'enroll'];
  List<String> mean = [
    '[명] 배송\n[명] 전달',
    '[명] 침전물, 퇴적물\n[명] 보증금',
    '[명] 졸업장',
    '[명] 단점, 불리한 점',
    '[동] 논의하다, 상의하다',
    '[명] 단점',
    '[명] 효과, 영향, 결과',
    '[형] 효율적인',
    '[형] 전기의',
    '[동] 등록하다, 등록시키다'
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