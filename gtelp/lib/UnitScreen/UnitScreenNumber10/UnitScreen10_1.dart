import 'package:flutter/material.dart';

class UnitScreen10_1 extends StatelessWidget {
  List<String> words = ['request', 'resemble', 'resource',
    'retain', 'scrutiny', 'shift',
    'similar', 'solar', 'stability', 'stray'];
  List<String> mean = [
    '[동] 요청하다\n[명] 요청',
    '[동] 닯다',
    '[명] 자원, 자료',
    '[동] 보유하다',
    '[명] 조사, 면밀히 살핌',
    '[명] 변화\n[명] 근무 교대\n[동] 옮겨가다, 바꾸다',
    '[형] 유사한, 비슷한',
    '[형] 태양의, 태양열의',
    '[명] 안정',
    '[동] 탈선하다, 벗어나 있다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 1'),
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