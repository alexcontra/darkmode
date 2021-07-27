import 'package:dark_mode_provider/screens/darkmode_screen.dart';
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 100.0),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.2,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DarkMode()));
                },
                icon: Image.asset('assets/logosmple1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
