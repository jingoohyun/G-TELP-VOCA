import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber8/UnitScreen8_10.dart';

List<String> partIconList8 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen8 extends StatefulWidget {
  @override
  _PartScreen8 createState() => _PartScreen8();
}

class _PartScreen8 extends State<PartScreen8> {
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
        title: Text('Part 8'),
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
              partSwitch8(index, context);
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
                  partIconList8[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf8(index);
                          _setData(partIconList8);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf8(index);
                        _setData(partIconList8);
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
    var key8 = 'done8';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key8, value);
  }
  void _loadData() async {
    var key8 = 'done8';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key8);
      for (var i = 0; i < partIconList8.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList8[i] = '0';
        }
        else {
          partIconList8[i] = '1';
        }
      }
    });
  }
}

partSwitch8(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen8_10()));
      break;
  }
}

partIconBoolIf8(index) {
  if(partIconList8[index] == '0') {
    partIconList8[index] = '1';
  }
  else {
    partIconList8[index] = '0';
  }
}