import 'package:flutter/material.dart';

class UnitScreen5_3 extends StatelessWidget {
  List<String> words = ['outlet', 'outstanding', 'overrun',
    'overview', 'own', 'partial',
    'participate', 'particularly', 'passenger', 'personality'];
  List<String> mean = [
    '[명] 발산\n[명] 배출구, 콘센트',
    '[형] 뛰어난, 두드러진\n[형] 미지불의',
    '[동] 초과하다\n[명] 초과',
    '[명] 개요',
    '[동] 소유하다\n[형] 자신만의',
    '[형] 부분의, 일부의',
    '[동] 참여하다',
    '[부] 특히',
    '[명] 승객',
    '[명] 성격'
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