import 'package:dark_mode_provider/screens/lightmode_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  _DarkModeState createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black.withOpacity(0.6),
        child: Column(
          children: [
            SizedBox(height: 100.0),
            //inconbutton
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.2,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LightMode()));
                  },
                  icon: Image.asset('assets/logosmple1white.png')),
            )
          ],
        ),
      ),
    );
  }
}
