import 'package:flutter/material.dart';

class UnitScreen8_5 extends StatelessWidget {
  List<String> words = ['fruitful', 'fulfill', 'further',
    'genuine', 'government', 'graduate',
    'greatly', 'head', 'hemisphere', 'hike'];
  List<String> mean = [
    '[형] 결실이 많은, 알찬',
    '[동] 달성하다, 완수하다',
    '[형] 그 이상의, 추가적인\n[부] 더 나아가',
    '[형] 진정한, 진짜의',
    '[명] 정부',
    '[동] 졸업하다\n[명] 졸업생',
    '[부] 대단히, 크게',
    '[동] 이끌다\n[동] 향하다\n[명] 머리',
    '[명] 반구',
    '[명] 급증, 인상'
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