import 'package:flutter/material.dart';

class UnitScreen1_5 extends StatelessWidget {
  List<String> words = ['absence', 'behavior', 'contract',
    'district', 'fond', 'hectic',
    'judgement', 'planet', 'pursue', 'victim'];
  List<String> mean = [
    '[명] 결석, 부재',
    '[명] 행동, 태도',
    '[명] 계약\n[동] (병 등에) 걸리다, 수축하다',
    '[명] 지구, 구역',
    '[형] 좋아하는',
    '[형] (정신없이) 바쁜',
    '[명] 판단',
    '[명] 행성',
    '[동] 추구하다',
    '[명] 피해자, 희생자'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 5'),
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