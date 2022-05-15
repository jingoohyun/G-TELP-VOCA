import 'package:flutter/material.dart';

class UnitScreen4_9 extends StatelessWidget {
  List<String> words = ['leading', 'lecture', 'legal',
    'limitation', 'loan', 'local',
    'location', 'loose', 'lower', 'lung'];
  List<String> mean = [
    '[형] 주도적인, 선도적인',
    '[명] 강의, 강연',
    '[형] 법적인',
    '[명] 한계, 제한',
    '[명] 대출',
    '[형] 지역의, 현지의',
    '[명] 위치, 장소',
    '[형] 느슨한',
    '[동] 낮추다, 내리다',
    '[명] 폐'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 9'),
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