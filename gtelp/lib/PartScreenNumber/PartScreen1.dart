import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber1/UnitScreen1_10.dart';

List<String> partIconList1 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen1 extends StatefulWidget {
  @override
  _PartScreen1 createState() => _PartScreen1();
}

class _PartScreen1 extends State<PartScreen1> {
  final List<String> entries = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text('Part 1'),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(bottom: 125),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              partSwitch1(index, context);
            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Unit ${entries[index]}',
                    style: TextStyle(fontSize: 25),
                  ),
                  partIconList1[index] == '0'? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf1(index);
                          _setData(partIconList1);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf1(index);
                        _setData(partIconList1);
                      });
                    },
                    icon: Icon(Icons.done, color: Colors.green),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
            thickness: 3,
            color: Colors.indigo
        ),
      ),
    );
  }
  void _setData(List<String> value) async {
    var key1 = 'done1';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key1, value);
  }
  void _loadData() async {
    var key1 = 'done1';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key1);
      for (var i = 0; i < partIconList1.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList1[i] = '0';
        }
        else {
          partIconList1[i] = '1';
        }
      }
    });
  }
}

partSwitch1(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen1_10()));
      break;
  }
}

partIconBoolIf1(index) {
  if(partIconList1[index] == '0') {
    partIconList1[index] = '1';
  }
  else {
    partIconList1[index] = '0';
  }
}