import 'dart:js';

import 'package:colorpallet/homepage.dart';
import 'package:colorpallet/s1.dart';
import 'package:colorpallet/s2.dart';
import 'package:colorpallet/s3.dart';
import 'package:colorpallet/s4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=>home(),
      'first':(context)=>s1(),
      'seco':(context)=>s2(),
      'thir':(context)=> s3(),
      'fort':(context)=>s4(),
      'fift':(context)=>
    },
  ),);
}