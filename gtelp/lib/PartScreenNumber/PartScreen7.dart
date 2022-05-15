import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber7/UnitScreen7_10.dart';

List<String> partIconList7 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen7 extends StatefulWidget {
  @override
  _PartScreen7 createState() => _PartScreen7();
}

class _PartScreen7 extends State<PartScreen7> {
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
        title: Text('Part 7'),
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
              partSwitch7(index, context);
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
                  partIconList7[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf7(index);
                          _setData(partIconList7);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf7(index);
                        _setData(partIconList7);
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
    var key7 = 'done7';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key7, value);
  }
  void _loadData() async {
    var key7 = 'done7';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key7);
      for (var i = 0; i < partIconList7.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList7[i] = '0';
        }
        else {
          partIconList7[i] = '1';
        }
      }
    });
  }
}

partSwitch7(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen7_10()));
      break;
  }
}

partIconBoolIf7(index) {
  if(partIconList7[index] == '0') {
    partIconList7[index] = '1';
  }
  else {
    partIconList7[index] = '0';
  }
}