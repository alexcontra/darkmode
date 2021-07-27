import 'package:dark_mode_provider/screens/main_screen.dart';
import 'package:dark_mode_provider/tools/classes.dart';
import 'package:dark_mode_provider/tools/provider_tool.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, val, child) {
          return MaterialApp(
            theme: Style.themedata(themeProvider.darktheme),
            home: MainScreen(),
          );
        },
      ),
    );
  }
}
