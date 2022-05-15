import 'package:flutter/material.dart';

class UnitScreen4_6 extends StatelessWidget {
  List<String> words = ['include', 'install', 'internal',
    'involved', 'irritation', 'maintenance',
    'masterpiece', 'match', 'monitor', 'motivate'];
  List<String> mean = [
    '[동] 포함하다, 함유하다',
    '[동] 설치하다',
    '[형] 내부의',
    '[형] 관여하는, 연루된\n[형] 몰두하는',
    '[명] 자극, 과민, 짜증',
    '[명] 유지, 관리',
    '[명] 걸작',
    '[동] 어울리다, 걸맞다\n[명] 어울리는 상대, 경기',
    '[동] 감독하다, 주시하다',
    '[동] 동기 부여하다'
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