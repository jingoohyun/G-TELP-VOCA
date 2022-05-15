import 'package:flutter/material.dart';

class UnitScreen9_4 extends StatelessWidget {
  List<String> words = ['observe', 'obsess', 'occur',
    'opportunity', 'order', 'ordinary',
    'organize', 'originate', 'outbreak', 'overconfident'];
  List<String> mean = [
    '[동] 관찰하다\n[동] 준수하다',
    '[동] 사로잡다, 집착하다',
    '[동] 일어나다, 발생하다',
    '[명] 기회',
    '[동] 주문하다, 명령하다\n[명] 주문',
    '[형] 일반적인, 보통의',
    '[동] 조직하다, 구성하다',
    '[동] 유래되다, 기원하다',
    '[명] (전쟁 등의) 발발, 발생',
    '[형] 지나치게 자신만만한'
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