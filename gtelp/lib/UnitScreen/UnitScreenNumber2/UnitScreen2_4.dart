import 'package:flutter/material.dart';

class UnitScreen2_4 extends StatelessWidget {
  List<String> words = ['rather', 'remind', 'replace',
    'residence', 'responsible', 'ruin',
    'solid', 'splatter', 'split', 'steadily'];
  List<String> mean = [
    '[부] 오히려, 차라리 (~보다는)',
    '[동] 생각나게 하다, 상기시키다',
    '[동] 교체하다, 대신하다',
    '[명] 거주지, 집',
    '[형] 책임 있는',
    '[동] 망치다, 파멸시키다\n[명] 파멸, 황폐',
    '[명] 고체\n[형] 고체의, 단단한',
    '[동] 튀기다, 엎지르다',
    '[동] 분리되다, 분리하다',
    '[부] 꾸준히, 서서히'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 4'),
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