import 'package:flutter/material.dart';

class UnitScreen6_1 extends StatelessWidget {
  List<String> words = ['search', 'seek', 'separate',
    'ship', 'snuff', 'store',
    'supervisor', 'transform', 'transition', 'venue'];
  List<String> mean = [
    '[동] 검색하다, 찾아보다\n[명] 검색',
    '[동] 찾다, 추구하다',
    '[형] 별도의, 분리된\n[동] 나누다, 분리하다',
    '[동] 배송하다, 운송하다\n[명] 배, 선박',
    '[동] (촛불 등을) 끄다',
    '[동] 저장하다, 비축하다\n[명] 상점',
    '[명] 관리자, 감독자',
    '[동] 변형하다, 바꾸다',
    '[명] 전환, 변화',
    '[명] 행사장, 개최지'
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