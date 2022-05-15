import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber3/UnitScreen3_10.dart';

List<String> partIconList3 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen3 extends StatefulWidget {
  @override
  _PartScreen3 createState() => _PartScreen3();
}

class _PartScreen3 extends State<PartScreen3> {
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
        title: Text('Part 3'),
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
              partSwitch3(index, context);
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
                  partIconList3[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf3(index);
                          _setData(partIconList3);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf3(index);
                        _setData(partIconList3);
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
    var key3 = 'done3';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key3, value);
  }
  void _loadData() async {
    var key3 = 'done3';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key3);
      for (var i = 0; i < partIconList3.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList3[i] = '0';
        }
        else {
          partIconList3[i] = '1';
        }
      }
    });
  }
}

partSwitch3(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen3_10()));
      break;
  }
}

partIconBoolIf3(index) {
  if(partIconList3[index] == '0') {
    partIconList3[index] = '1';
  }
  else {
    partIconList3[index] = '0';
  }
}