import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/PartScreenNumber/PartScreen1.dart';
import 'package:gtelp/PartScreenNumber/PartScreen2.dart';
import 'package:gtelp/PartScreenNumber/PartScreen3.dart';
import 'package:gtelp/PartScreenNumber/PartScreen4.dart';
import 'package:gtelp/PartScreenNumber/PartScreen5.dart';
import 'package:gtelp/PartScreenNumber/PartScreen6.dart';
import 'package:gtelp/PartScreenNumber/PartScreen7.dart';
import 'package:gtelp/PartScreenNumber/PartScreen8.dart';
import 'package:gtelp/PartScreenNumber/PartScreen9.dart';
import 'package:gtelp/PartScreenNumber/PartScreen10.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: MyApp(),
    ),
  );
}

List<String> iconList = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('G-TELP VOCA'),
        backgroundColor: Colors.indigo,
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(bottom: 125),
        itemCount:  10,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
        ),
        itemBuilder: (BuildContext context,int index) {
          return GestureDetector(
            onTap: () {
              MyAppSwitch(index, context);
            },
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 3, color: Colors.indigo),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Part ${index + 1}',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  iconList[index] == '0' ? IconButton(
                    icon: Icon(
                      Icons.done_outline,
                    ),
                    onPressed: (){
                      setState(() {
                        iconBoolIf(index);
                        _setData(iconList);
                      });
                    },
                  ) :
                  IconButton(
                    icon: Icon(
                      Icons.done, color: Colors.green, size: 30,
                    ),
                    onPressed: (){
                      setState(() {
                        iconBoolIf(index);
                        _setData(iconList);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  void _setData(List<String> value) async {
    var key = 'done';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key, value);
  }
  void _loadData() async {
    var key = 'done';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key);
      for (var i = 0; i < iconList.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          iconList[i] = '0';
        }
        else {
          iconList[i] = '1';
        }
      }
    });
  }
}

MyAppSwitch(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PartScreen10()));
      break;
  }
}
iconBoolIf(index) {
  if (iconList[index] == '0') {
    iconList[index] = '1';
  }
  else {
    iconList[index] = '0';
  }
}