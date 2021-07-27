import 'package:dark_mode_provider/tools/provider_tool.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

ThemeProvider themeProvider = ThemeProvider();

class _MainScreenState extends State<MainScreen> {
  String nameOfLogo = 'assets/logosmple1.png';
  void getCurrentTheme() async {
    themeProvider.darktheme = await themeProvider.preference.getTheme();
  }

  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.2,
              child: IconButton(
                  onPressed: () {
                    //set new logo
                    //set boolean value for state
                    themeProvider.darktheme = !themeProvider.darktheme;
                    setState(() {
                      if (nameOfLogo == 'assets/logosmple1.png') {
                        nameOfLogo = 'assets/logosmple1white.png';
                      } else {
                        nameOfLogo = nameOfLogo = 'assets/logosmple1.png';
                      }
                    });
                  },
                  icon: Image.asset(nameOfLogo)),
            ),
          ],
        ),
      ),
    );
  }
}
