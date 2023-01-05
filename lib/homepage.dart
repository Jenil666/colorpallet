import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List Name = [
    "India",
    "America",
    "Afgisthan",
    "United Kingdom",
    "Gernemy",
    "France",
    "Japan",
    "Ukrean",
    "china",
    "Caneda"
  ];
  List Flag = [
    "🇮🇳",
    "🇺🇸",
    "🇦🇫",
    "🇬🇧",
    "🇩🇪",
    "🇫🇷",
    "🇯🇵",
    "🇺🇦",
    "🇨🇳",
    "🇨🇦",
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Countries"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: Name
                  .asMap()
                  .entries
                  .map((e) => InkWell(
                onTap: (){
                  if(e.key==0)
                    {
                      Navigator.pushNamed(context, 'first');
                    }
                  else if(e.key==1 )
                    {
                      Navigator.pushNamed(context, 'seco');
                    }
                  else if(e.key==2)
                    {
                      Navigator.pushNamed(context, 'seco');
                    }
                },
                  child: con(Name[e.key], Flag[e.key])))
                  .toList(),
            ),
          ),
        ));
  }
}

Widget con(String name, String flag) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 70,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              color: Colors.red
          )
        ]
    ),
    child: Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$flag",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Text(
              "$name",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
          ),
    ),
  );
}
