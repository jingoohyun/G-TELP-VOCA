import 'package:flutter/material.dart';

class UnitScreen5_6 extends StatelessWidget {
  List<String> words = ['property', 'puzzle', 'rating',
    'realize', 'regular', 'remove',
    'reserve', 'respond', 'retreat', 'routine'];
  List<String> mean = [
    '[명] 재산, 자산\n[명] 자질, 성질',
    '[동] 어리둥절하게 하다, 당황스럽게 하다',
    '[명] 등급, 급수',
    '[동] 깨닫다, 인식하다',
    '[형] 일반적인, 보통의\n[형] 규칙적인, 정규의',
    '[동] 제거하다',
    '[동] 예약하다\n[동] 남겨두다',
    '[동] 대응하다, 응답하다',
    '[명] 휴양지, 피난처\n[동] 물러나다',
    '[명] 일상\n[형] 일상적인, 판에 박힌'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 6'),
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