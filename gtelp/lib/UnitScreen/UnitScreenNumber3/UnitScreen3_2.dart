import 'package:flutter/material.dart';

class UnitScreen3_2 extends StatelessWidget {
  List<String> words = ['bump', 'calm', 'cancel',
    'capacity', 'capture', 'cause',
    'charge', 'clear', 'clutter', 'combination'];
  List<String> mean = [
    '[동] 부딪히다\n[명] 혹, 쿵 소리',
    '[형] 차분한, 침착한\n[동] 진정하다',
    '[동] 취소하다',
    '[명] 용량, 수용 능력',
    '[동] 포착하다\n[동] 붙잡다',
    '[동] 일으키다, 초래하다\n[명] 원인, 명분',
    '[동] 충전하다\n[명] 요금, 책임\n[동] 청구하다, 부과하다',
    '[형]명확한, 맑은\n[동] (마음 등을) 맑게 하다, 정리하다\n[동] 치우다',
    '[명] 어질러진 물건, 잡동사니',
    '[명] 조합, 결합'
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