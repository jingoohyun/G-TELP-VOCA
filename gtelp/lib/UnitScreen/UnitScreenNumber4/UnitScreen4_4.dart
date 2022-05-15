import 'package:flutter/material.dart';

class UnitScreen4_4 extends StatelessWidget {
  List<String> words = ['furthermore', 'generous', 'goods',
    'grainy', 'greasy', 'groom',
    'growth', 'guarantee', 'habit', 'handle'];
  List<String> mean = [
    '[부] 게다가',
    '[형] 관대한, 후한',
    '[명] 물건, 상품',
    '[형] 선명하지 못한, 거친',
    '[형] 기름진',
    '[동] ~의 털을 손질하다, 다듬다',
    '[명] 성장',
    '[동] 보장하다, 보증하다\n[명] 보장',
    '[명] 습관',
    '[동] 다루다, 대처하다\n[명] 손잡이'
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