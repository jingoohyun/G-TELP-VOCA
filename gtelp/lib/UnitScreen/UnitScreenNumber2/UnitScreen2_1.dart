import 'package:flutter/material.dart';

class UnitScreen2_1 extends StatelessWidget {
  List<String> words = ['gigantic', 'harvest', 'ignore',
    'immediately', 'injure', 'insect',
    'insist', 'investigate', 'irritated', 'lag'];
  List<String> mean = [
    '[형] 거대한, 엄청난',
    '[명] 수확(물)\n[동] 수확하다',
    '[동] 무시하다, 모른 체하다',
    '[부] 즉시',
    '[동] 다치다, 부상을 입히다',
    '[명] 곤충',
    '[동] 고집하다, 주장하다',
    '[동] 조사하다, 수사하다',
    '[형] 가려운, 따끔거리는\n[형] 짜증난',
    '[동] 뒤처지다\n[명] 시간차이'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 1'),
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