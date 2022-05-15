import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber10/UnitScreen10_10.dart';

List<String> partIconList10 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen10 extends StatefulWidget {
  @override
  _PartScreen10 createState() => _PartScreen10();
}

class _PartScreen10 extends State<PartScreen10> {
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
        title: Text('Part 10'),
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
              partSwitch10(index, context);
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
                  partIconList10[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf10(index);
                          _setData(partIconList10);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf10(index);
                        _setData(partIconList10);
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
    var key10 = 'done10';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key10, value);
  }
  void _loadData() async {
    var key10 = 'done10';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key10);
      for (var i = 0; i < partIconList10.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList10[i] = '0';
        }
        else {
          partIconList10[i] = '1';
        }
      }
    });
  }
}

partSwitch10(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen10_10()));
      break;
  }
}

partIconBoolIf10(index) {
  if(partIconList10[index] == '0') {
    partIconList10[index] = '1';
  }
  else {
    partIconList10[index] = '0';
  }
}