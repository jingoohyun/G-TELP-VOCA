import 'package:flutter/material.dart';

class UnitScreen3_10 extends StatelessWidget {
  List<String> words = ['enable', 'engage', 'enhance',
    'enrich', 'ensure', 'entire',
    'equipment', 'establish', 'evaluate', 'excel'];
  List<String> mean = [
    '[동] 가능하게 하다',
    '[동] 참여시키다',
    '[동] 강화하다, 증진시키다',
    '[동] 풍부하게 하다',
    '[동] 보장하다, 확실히 ~하게 하다',
    '[형] 전체의',
    '[명] 장비',
    '[동] 설립하다, 구축하다',
    '[동] 평가하다',
    '[동] 뛰어나다, 탁월하다'
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