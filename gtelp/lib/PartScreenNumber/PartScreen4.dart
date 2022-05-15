import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber4/UnitScreen4_10.dart';

List<String> partIconList4 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen4 extends StatefulWidget {
  @override
  _PartScreen4 createState() => _PartScreen4();
}

class _PartScreen4 extends State<PartScreen4> {
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
        title: Text('Part 4'),
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
              partSwitch4(index, context);
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
                  partIconList4[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf4(index);
                          _setData(partIconList4);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf4(index);
                        _setData(partIconList4);
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
    var key4 = 'done4';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key4, value);
  }
  void _loadData() async {
    var key4 = 'done4';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key4);
      for (var i = 0; i < partIconList4.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList4[i] = '0';
        }
        else {
          partIconList4[i] = '1';
        }
      }
    });
  }
}

partSwitch4(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen4_10()));
      break;
  }
}

partIconBoolIf4(index) {
  if(partIconList4[index] == '0') {
    partIconList4[index] = '1';
  }
  else {
    partIconList4[index] = '0';
  }
}