import 'package:flutter/material.dart';

class UnitScreen5_10 extends StatelessWidget {
  List<String> words = ['retail', 'reveal', 'review',
    'reward', 'sacrifice', 'safety',
    'satisfy', 'save', 'scalp', 'scary'];
  List<String> mean = [
    '[형] 소매의\n[명] 소매',
    '[동] 드러내다, 밝히다',
    '[동] 검토하다, 복습하다\n[명] 검토, 평론',
    '[명] 보상\n[동] 보상하다',
    '[동] 희생하다\n[명] 희생, 제물',
    '[명] 안전',
    '[동] 만족시키다, 충족시키다',
    '[동] 절약하다, 저축하다\n[동] 남겨두다',
    '[명] 두피',
    '[형] 무서운'
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