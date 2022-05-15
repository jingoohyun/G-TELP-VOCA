import 'package:flutter/material.dart';

class UnitScreen10_5 extends StatelessWidget {
  List<String> words = ['standard', 'statement', 'statue',
    'stock', 'successful', 'suit',
    'status', 'superstition', 'supervise', 'surgery'];
  List<String> mean = [
    '[명] 기준, 수준\n[형] 표준의',
    '[명] 진술, 발언',
    '[명] 동상, 조각상',
    '[명] 재고(품), 보유\n[명] 주식',
    '[형] 성공적인',
    '[동] 적합하다, 알맞다\n[명] 소송, 정장',
    '[명] 지위, 위상\n[명] (진행되는) 상황',
    '[명] 미신',
    '[동] 관리하다, 감독하다',
    '[명] 외과, 수술'
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