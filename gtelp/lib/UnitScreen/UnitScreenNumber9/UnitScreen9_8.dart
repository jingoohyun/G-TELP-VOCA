import 'package:flutter/material.dart';

class UnitScreen9_8 extends StatelessWidget {
  List<String> words = ['present', 'preserve', 'prevalent',
    'private', 'prominent', 'promote',
    'propose', 'provide', 'punishment', 'purchase'];
  List<String> mean = [
    '[동] 제시하다, 발표하다\n[명] 선물, 현재',
    '[동] 보존하다',
    '[형] 만연한, 널리 퍼져있는',
    '[형] 사립의, 사설의\n[형] 민간의, 개인의',
    '[형] 저명한, 현저한',
    '[동] 촉진시키다\n[동] 승진하다',
    '[동] 제시하다, 제안하다',
    '[동] 제공하다',
    '[명] 벌',
    '[동] 구매하다\n[명] 구매'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 8'),
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