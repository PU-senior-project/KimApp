import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kim_app/Tools/Kim/Kim_Constans.dart';

class Mybutton4_Girl extends StatefulWidget {
  const Mybutton4_Girl({Key? key}) : super(key: key);

  @override
  State<Mybutton4_Girl> createState() => _Mybutton4_Girl();
}

class _Mybutton4_Girl extends State<Mybutton4_Girl> {
  int _selection5_Girl = 0;

  selectTime5(int? timeSelected) {
    setState(() {
      _selection5_Girl = timeSelected!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "運送作業",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selection5_Girl = 1;
                LoadLevel.manLoad = 1;
                print("當前男性搬運物荷重級別為: ${LoadLevel.manLoadLeveling()}");
              });
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 110,
                  color: _selection5_Girl == 1 ? Colors.green : Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      focusColor: Colors.white,
                      groupValue: _selection5_Girl,
                      onChanged: selectTime5,
                      value: 1,
                    ),
                    Text(
                      "< 300 m",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selection5_Girl = 2;
                LoadLevel.manLoad = 2;
                print("當前男性搬運物荷重級別為: ${LoadLevel.manLoadLeveling()}");
              });
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 140,
                  color: _selection5_Girl == 2 ? Colors.green : Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      focusColor: Colors.white,
                      groupValue: _selection5_Girl,
                      onChanged: selectTime5,
                      value: 2,
                    ),
                    Text(
                      "300 m ~ 1 km",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selection5_Girl = 3;
                LoadLevel.manLoad = 3;
                print("當前男性搬運物荷重級別為: ${LoadLevel.manLoadLeveling()}");
              });
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 110,
                  color: _selection5_Girl == 3 ? Colors.green : Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      focusColor: Colors.white,
                      groupValue: _selection5_Girl,
                      onChanged: selectTime5,
                      value: 3,
                    ),
                    Text(
                      "1 ~ 4 km",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selection5_Girl = 4;
                LoadLevel.manLoad = 4;
                print("當前男性搬運物荷重級別為: ${LoadLevel.manLoadLeveling()}");
              });
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 110,
                  color: _selection5_Girl == 4 ? Colors.green : Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      focusColor: Colors.white,
                      groupValue: _selection5_Girl,
                      onChanged: selectTime5,
                      value: 4,
                    ),
                    Text(
                      "4 ~ 8 km",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selection5_Girl = 5;
                LoadLevel.manLoad = 5;
                print("當前男性搬運物荷重級別為: ${LoadLevel.manLoadLeveling()}");
              });
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 140,
                  color: _selection5_Girl == 5 ? Colors.green : Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      focusColor: Colors.white,
                      groupValue: _selection5_Girl,
                      onChanged: selectTime5,
                      value: 5,
                    ),
                    Text(
                      "8 km ~ 16 km",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selection5_Girl = 6;
                LoadLevel.manLoad = 6;
                print("當前男性搬運物荷重級別為: ${LoadLevel.manLoadLeveling()}");
              });
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 110,
                  color: _selection5_Girl == 6 ? Colors.green : Colors.white,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      focusColor: Colors.white,
                      groupValue: _selection5_Girl,
                      onChanged: selectTime5,
                      value: 6,
                    ),
                    Text(
                      ">= 16 km",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
