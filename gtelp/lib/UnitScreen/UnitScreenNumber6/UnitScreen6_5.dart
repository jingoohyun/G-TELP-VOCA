import 'package:flutter/material.dart';

class UnitScreen6_5 extends StatelessWidget {
  List<String> words = ['trait', 'trip', 'tuition',
    'undecided', 'unstable', 'usual',
    'valid', 'warehouse', 'wordy', 'worth'];
  List<String> mean = [
    '[명] 특성, 특징',
    '[명] (짧은) 여행, 이동\n[동] 걸려 넘어지다',
    '[명] 수업료, 등록금',
    '[형] 결정하지 못한',
    '[형] 불안정한',
    '[형] 평소의, 보통의',
    '[형] 타당한, 유효한',
    '[명] 창고',
    '[형] 장황한',
    '[명] 가치, 값어치\n[형] 가치가 있는'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 5'),
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