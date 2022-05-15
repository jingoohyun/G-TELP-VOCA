import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber9/UnitScreen9_10.dart';

List<String> partIconList9 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen9 extends StatefulWidget {
  @override
  _PartScreen9 createState() => _PartScreen9();
}

class _PartScreen9 extends State<PartScreen9> {
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
        title: Text('Part 9'),
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
              partSwitch9(index, context);
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
                  partIconList9[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf9(index);
                          _setData(partIconList9);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf9(index);
                        _setData(partIconList9);
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
    var key9 = 'done9';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key9, value);
  }
  void _loadData() async {
    var key9 = 'done9';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key9);
      for (var i = 0; i < partIconList9.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList9[i] = '0';
        }
        else {
          partIconList9[i] = '1';
        }
      }
    });
  }
}

partSwitch9(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen9_10()));
      break;
  }
}

partIconBoolIf9(index) {
  if(partIconList9[index] == '0') {
    partIconList9[index] = '1';
  }
  else {
    partIconList9[index] = '0';
  }
}