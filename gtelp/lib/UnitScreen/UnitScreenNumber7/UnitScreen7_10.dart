import 'package:flutter/material.dart';

class UnitScreen7_10 extends StatelessWidget {
  List<String> words = ['emphasis', 'employ', 'enclose',
    'endure', 'engaged', 'enlarge',
    'enthusiast', 'entrepreneur', 'entry', 'environment'];
  List<String> mean = [
    '[명] 강조',
    '[동] 사용하다\n[동] 고용하다',
    '[동] 동봉하다',
    '[동] 견디다, 참다',
    '[형] ~에 몰두하는, 바쁜',
    '[동] 확대하다, 확장하다',
    '[명] 애호가',
    '[명] 사업가, 기업가',
    '[명] 입장, 진입',
    '[명] 환경'
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