import 'package:flutter/material.dart';

class UnitScreen10_4 extends StatelessWidget {
  List<String> words = ['serious', 'sidetrack', 'significant',
    'sizeable', 'socialize', 'source',
    'spare', 'specialize', 'speculation', 'spoil'];
  List<String> mean = [
    '[형] 심각한, 중대한',
    '[동] 산만하게 하다, 곁길로 새게 하다',
    '[형] 중대한, 상당한',
    '[형] 상당한, 꽤 큰',
    '[동] 친목을 도모하다, 사교하다',
    '[명] 출처, 원천',
    '[형] 여분의, 한가한\n[동] 아끼다, 할애하다',
    '[동] 전문으로 하다, 전공하다',
    '[명] 추측, 숙고, 사색',
    '[동] 상하다\n[동] 망치다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 4'),
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