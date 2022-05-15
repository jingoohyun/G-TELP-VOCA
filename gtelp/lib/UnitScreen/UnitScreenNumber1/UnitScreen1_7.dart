import 'package:flutter/material.dart';

class UnitScreen1_7 extends StatelessWidget {
  List<String> words = ['accident', 'activate', 'advantage',
    'anatomy', 'announce', 'anticipate',
    'appear', 'application', 'appointment', 'appropriate'];
  List<String> mean = [
    '[명] 사고\n[명] 우연',
    '[동] 활성화하다',
    '[명] 이점, 장점',
    '[명] 해부학',
    '[동] 발표하다, 알리다',
    '[동] 기대하다, 예상하다',
    '[동] 나타나다, 등장하다\n[동] ~처럼 보이다',
    '[명] 응용 프로그램\n[명] 지원, 신청',
    '[명] (업무 관련) 약속',
    '[형] 적절한, 적합한'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 7'),
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