import 'package:flutter/material.dart';

class UnitScreen5_7 extends StatelessWidget {
  List<String> words = ['proper', 'prospective', 'protect',
    'prove', 'quality', 'quarrel',
    'quarter', 'railing', 'rare', 'rave'];
  List<String> mean = [
    '[형] 적절한, 알맞은',
    '[형] 미래의, 가망이 있는',
    '[동] 보호하다',
    '[동] 증명하다',
    '[명] 품질\n[형] 양질의',
    '[명] 말다툼, 언쟁\n[동] 말다툼하다',
    '[명] 4분의 1, 분기',
    '[명] (발코니 등의) 난간',
    '[형] 드문',
    '[명] 열광, 격찬'
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