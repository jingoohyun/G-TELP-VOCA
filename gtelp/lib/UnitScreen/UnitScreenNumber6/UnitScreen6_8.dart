import 'package:flutter/material.dart';

class UnitScreen6_8 extends StatelessWidget {
  List<String> words = ['advertising', 'aesthetically', 'affordable',
    'agree', 'air', 'airtight',
    'allot', 'allow', 'alter', 'amenity'];
  List<String> mean = [
    '[명] 광고',
    '[형] 심미적으로, 미학적으로',
    '[형] 저렴한, (가격이) 알맞은, 형편이 되는',
    '[동] 동의하다, 합의하다',
    '[동] 방송하다\n[명] 공기',
    '[형] 밀폐된',
    '[동] 할당하다, 배정하다',
    '[동] 허용하다, ~을 가능하게 하다',
    '[동] 바꾸다',
    '[명] (생활) 편의 시설'
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