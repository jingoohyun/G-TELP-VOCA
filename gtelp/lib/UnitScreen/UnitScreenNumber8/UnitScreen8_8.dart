import 'package:flutter/material.dart';

class UnitScreen8_8 extends StatelessWidget {
  List<String> words = ['inflate', 'influence', 'inform',
    'inhale', 'inhibit', 'initially',
    'inquiry', 'inspire', 'instant', 'intelligent'];
  List<String> mean = [
    '[동] 부풀리다, 팽창시키다',
    '[동] 영향을 미치다\n[명] 영향',
    '[동] 알리다, 통지하다',
    '[동] (숨을) 들이 쉬다',
    '[동] 억제하다, 방해하다',
    '[부] 처음에, 초기에',
    '[명] 문의, 질문',
    '[동] 영감을 주다, 고취시키다',
    '[형] 즉각적인',
    '[형] 총명한, 지적인'
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