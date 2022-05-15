import 'package:flutter/material.dart';

class UnitScreen2_10 extends StatelessWidget {
  List<String> words = ['ban', 'benefit', 'besides',
    'bid', 'blame', 'bond',
    'borrow', 'brag', 'breed', 'browse'];
  List<String> mean = [
    '[동] 막다, 금지하다',
    '[명] 혜택, 이점\n[동] 이롭게 하다',
    '[부] 게다가',
    '[동] 입찰하다',
    '[동] ~를 탓하다, ~의 탓으로 돌리다',
    '[명] 유대감, 결속',
    '[동] 빌리다',
    '[동] 자랑하다',
    '[명] 품종\n[동] 기르다, 번식하다',
    '[동] 둘러보다\n[동] 검색하다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 10'),
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