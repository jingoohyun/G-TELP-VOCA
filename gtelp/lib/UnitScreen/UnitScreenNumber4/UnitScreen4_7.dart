import 'package:flutter/material.dart';

class UnitScreen4_7 extends StatelessWidget {
  List<String> words = ['impulse', 'income', 'increase',
    'industrial', 'ingredient', 'injury',
    'innovative', 'insert', 'instead', 'institution'];
  List<String> mean = [
    '[명] 충동',
    '[명] 수입',
    '[동] 올리다, 증가시키다\n[명] 인상, 증가',
    '[형] 산업의, 산업용',
    '[명] 재료, 성분',
    '[명] 부상',
    '[형] 혁신적인, 획기적인',
    '[동] 끼우다',
    '[부] 대신에',
    '[명] 기관, 협회'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 7'),
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