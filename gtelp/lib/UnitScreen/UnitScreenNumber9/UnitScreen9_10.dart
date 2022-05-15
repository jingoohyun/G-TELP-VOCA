import 'package:flutter/material.dart';

class UnitScreen9_10 extends StatelessWidget {
  List<String> words = ['refugee', 'refuse', 'regain',
    'regard', 'regarding', 'release',
    'reliable', 'religion', 'relocate', 'reluctance'];
  List<String> mean = [
    '[명] 난민, 피난민',
    '[동] 거절하다, 거부하다',
    '[동] 다시 얻다, 되찾다',
    '[명] 관련\n[명] 존중, 평가\n[동] ~라고 여기다',
    '[전] ~에 관하여',
    '[동] 방출하다\n[명] 발산]\n[동] 출시하다\n[명] 출시, 석방',
    '[형] 믿을 수 있는',
    '[명] 종교',
    '[동] 이주하다, 이전하다',
    '[명] 내키지 않음, 꺼림'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 10'),
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