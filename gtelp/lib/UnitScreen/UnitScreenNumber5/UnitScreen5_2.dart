import 'package:flutter/material.dart';

class UnitScreen5_2 extends StatelessWidget {
  List<String> words = ['negotiate', 'obedient', 'occasion',
    'offensive', 'offset', 'operate',
    'opinion', 'organic', 'organized', 'outcome'];
  List<String> mean = [
    '[동] 협상하다',
    '[형] 복종적인, 순종적인',
    '[명] 행사, 때',
    '[형] 불쾌한',
    '[동] (손실, 이득 등을) 상쇄하다',
    '[동] 작동하다, 운영되다',
    '[명] 의견',
    '[형] 유기농의, 유기체의',
    '[형] 체계적인, 조직화된',
    '[명] 결과'
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