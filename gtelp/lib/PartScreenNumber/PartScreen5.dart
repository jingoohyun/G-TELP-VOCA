import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_1.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_2.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_3.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_4.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_5.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_6.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_7.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_8.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_9.dart';
import 'package:gtelp/UnitScreen/UnitScreenNumber5/UnitScreen5_10.dart';

List<String> partIconList5 = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0'];

class PartScreen5 extends StatefulWidget {
  @override
  _PartScreen5 createState() => _PartScreen5();
}

class _PartScreen5 extends State<PartScreen5> {
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
        title: Text('Part 5'),
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
              partSwitch5(index, context);
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
                  partIconList5[index] == '0' ? IconButton(
                      onPressed: (){
                        setState(() {
                          partIconBoolIf5(index);
                          _setData(partIconList5);
                        });
                      },
                      icon: Icon(Icons.done_outline)
                  ) :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        partIconBoolIf5(index);
                        _setData(partIconList5);
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
    var key5 = 'done5';
    SharedPreferences  sp = await SharedPreferences.getInstance();
    sp.setStringList(key5, value);
  }
  void _loadData() async {
    var key5 = 'done5';
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      var value = sp.getStringList(key5);
      for (var i = 0; i < partIconList5.length; i++){
        if (value == null) {
          null;
        }
        else if (value[i] == '0') {
          partIconList5[i] = '0';
        }
        else {
          partIconList5[i] = '1';
        }
      }
    });
  }
}

partSwitch5(index, context) {
  switch(index) {
    case 0 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_1()));
      break;
    case 1 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_2()));
      break;
    case 2 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_3()));
      break;
    case 3 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_4()));
      break;
    case 4 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_5()));
      break;
    case 5 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_6()));
      break;
    case 6 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_7()));
      break;
    case 7 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_8()));
      break;
    case 8 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_9()));
      break;
    case 9 :
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnitScreen5_10()));
      break;
  }
}

partIconBoolIf5(index) {
  if(partIconList5[index] == '0') {
    partIconList5[index] = '1';
  }
  else {
    partIconList5[index] = '0';
  }
}