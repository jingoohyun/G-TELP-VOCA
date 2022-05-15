import 'package:flutter/material.dart';

class UnitScreen10_2 extends StatelessWidget {
  List<String> words = ['remain', 'representative', 'require',
    'rescue', 'research', 'resident',
    'resign', 'resolve', 'resort', 'respect'];
  List<String> mean = [
    '[동] 남아 있다, 여전히 ~이다',
    '[명] 대표, 대리인\n[형] 대표하는',
    '[동] 요구하다, 필요로 하다',
    '[명] 구조\n[동] 구조하다',
    '[명] 연구, 조사\n[동] 연구하다, 조사하다',
    '[명] 거주인, 주민',
    '[동] 사직하다, 그만두다',
    '[동] 해결하다',
    '[동] (부득이하게) 의존하다, 호소하다',
    '[동] 존중하다, 존경하다\n[명] 존중, 존경'
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