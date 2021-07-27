import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightMode extends StatefulWidget {
  const LightMode({Key? key}) : super(key: key);

  @override
  _LightModeState createState() => _LightModeState();
}

class _LightModeState extends State<LightMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
