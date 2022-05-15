import 'package:flutter/material.dart';

class UnitScreen1_8 extends StatelessWidget {
  List<String> words = ['assign', 'association', 'assure',
    'avoid', 'awake', 'board',
    'capital', 'celebrate', 'combine', 'comment'];
  List<String> mean = [
    '[동] 할당하다, 부여하다',
    '[명] 협회, 연합',
    '[동] 장담하다, 보장하다',
    '[동] 피하다',
    '[형] 깨어 있는',
    '[명] 위원회, 이사회\n[동] 탑승하다',
    '[명] 자본\n[명] 수도\n[형] 대문자의',
    '[동] 기념하다, 축하하다',
    '[동] 결합하다',
    '[명] 의견, 발언\n[동] 의견을 말하다, 논평하다'
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