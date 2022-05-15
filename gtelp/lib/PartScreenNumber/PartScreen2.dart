import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber2/UnitScreen2_10.dart';

List<String> partIconList2 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen2 extends StatefulWidget {
  @override
  _PartScreen2 createState() => _PartScreen2();
}

class _PartScreen2 extends State<PartScreen2> {
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
        title: Text('Part 2'),
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
              partSwitch2(index, context);
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
                  partIconList2[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf2(index);
                          _setData(partIconList2);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf2(index);
                        _setData(partIconList2);
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
    var key2 = 'done2';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key2, value);
  }
  void _loadData() async {
    var key2 = 'done2';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key2);
      for (var i = 0; i < partIconList2.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList2[i] = '0';
        }
        else {
          partIconList2[i] = '1';
        }
      }
    });
  }
}

partSwitch2(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen2_10()));
      break;
  }
}

partIconBoolIf2(index) {
  if(partIconList2[index] == '0') {
    partIconList2[index] = '1';
  }
  else {
    partIconList2[index] = '0';
  }
}