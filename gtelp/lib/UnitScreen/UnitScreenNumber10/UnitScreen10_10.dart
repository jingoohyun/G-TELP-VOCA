import 'package:flutter/material.dart';

class UnitScreen10_10 extends StatelessWidget {
  List<String> words = ['versed', 'violent', 'voluminous',
    'vouch', 'warn', 'wealthy',
    'weigh', 'withdraw', 'workforce', 'zoology'];
  List<String> mean = [
    '[형] 정통한, 숙달한',
    '[형] 격렬한\n[형] 폭력적인',
    '[형] 풍성한',
    '[동] 보증하다, 확실히 인정하다',
    '[동] 경고하다',
    '[형] 부유한',
    '[동] 무게가 나가다\n[동] 숙고하다, 따져보다',
    '[동] (예금을) 인출하다\n[동] 물러나다',
    '[명] 노동력, 노동 인구',
    '[명] 동물학'
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