import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber6/UnitScreen6_10.dart';

List<String> partIconList6 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen6 extends StatefulWidget {
  @override
  _PartScreen6 createState() => _PartScreen6();
}

class _PartScreen6 extends State<PartScreen6> {
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
        title: Text('Part 6'),
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
              partSwitch6(index, context);
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
                  partIconList6[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf6(index);
                          _setData(partIconList6);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf6(index);
                        _setData(partIconList6);
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
    var key6 = 'done6';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key6, value);
  }
  void _loadData() async {
    var key6 = 'done6';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key6);
      for (var i = 0; i < partIconList6.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList6[i] = '0';
        }
        else {
          partIconList6[i] = '1';
        }
      }
    });
  }
}

partSwitch6(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen6_10()));
      break;
  }
}

partIconBoolIf6(index) {
  if(partIconList6[index] == '0') {
    partIconList6[index] = '1';
  }
  else {
    partIconList6[index] = '0';
  }
}