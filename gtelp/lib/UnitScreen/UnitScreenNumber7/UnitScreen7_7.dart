import 'package:flutter/material.dart';

class UnitScreen7_7 extends StatelessWidget {
  List<String> words = ['defect', 'degree', 'deliver',
    'demise', 'demonstrate', 'department',
    'derive', 'describe', 'deter', 'determined'];
  List<String> mean = [
    '[명] 결함, 결점',
    '[명] 학위\n[명] 정도',
    '[동] 배달하다\n[동] (연설,일 등을) 제공하다',
    '[명] 소멸, 종말',
    '[동] 나타내다, 보여주다',
    '[명] 부서, 과',
    '[동] 유래하다',
    '[동] 묘사하다, 기술하다',
    '[동] 단념시키다, 그만두게 하다',
    '[형] 결단력이 있는, 단호한'
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