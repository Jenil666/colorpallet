import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s1 extends StatefulWidget {
  const s1({Key? key}) : super(key: key);

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          height: 300,
          width: 300,
          color: Colors.red,
        ),
      ),
    );
  }
}
