import 'package:flutter/material.dart';

class UnitScreen7_9 extends StatelessWidget {
  List<String> words = ['division', 'dominate', 'doubt',
    'due', 'eagerness', 'editorial',
    'effective', 'effort', 'electricity', 'elevate'];
  List<String> mean = [
    '[명] 부문, 부서\n[명] 분배, 분열',
    '[동] 지배하다, 우세하다',
    '[동] 의심하다',
    '[명] 회비\n[형] ~할 예정인, ~로 인한',
    '[명] 열망',
    '[형] 편집의',
    '[형] 효과적인',
    '[명] 노력',
    '[명] 전기',
    '[동] 올리다, 승진시키다'
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