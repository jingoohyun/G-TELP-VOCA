import 'package:flutter/material.dart';

class UnitScreen6_9 extends StatelessWidget {
  List<String> words = ['ancestor', 'annual', 'applicant',
    'apprentice', 'archeological', 'arrange',
    'assemble', 'assess', 'assistant', 'arrogant'];
  List<String> mean = [
    '[명] 조상',
    '[형] 매년의, 연간의',
    '[명] 지원자, 신청자',
    '[명] 견습생',
    '[형] 고고학적',
    '[동] 준비하다, 처리하다\n[동] 배열하다',
    '[동] 조립하다',
    '[동] 평가하다',
    '[명] 보조, 조수',
    '[형] 오만한'
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