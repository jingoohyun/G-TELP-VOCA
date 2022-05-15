import 'package:flutter/material.dart';

class UnitScreen2_2 extends StatelessWidget {
  List<String> words = ['launch', 'massive', 'meteor',
    'mind', 'mysterious', 'nearby',
    'neglect', 'neighbor', 'nutrient', 'offend'];
  List<String> mean = [
    '[동] 착수하다, 출시하다\n[명] 출시',
    '[형] 대규모의',
    '[명] 유성',
    '[동] 꺼리다\n[명] 마음, 정신',
    '[형] 신기한, 이상한',
    '[형] 근처의, 인근의\n[부] 근처에',
    '[동] 방치하다, 소홀히 하다',
    '[명] 이웃',
    '[명] 영양, 영양소',
    '[동] 불쾌하게 하다'
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