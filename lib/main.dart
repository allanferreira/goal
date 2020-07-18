import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:goal/screens/calculator_page.dart';

void main() {
  runApp(App());
}

final theme = ThemeData(
  primaryColor: Color(0xffff6b81),
  accentColor: Color(0xfff3f3f3),
  scaffoldBackgroundColor: Color(0xffffffff),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Color(0xff1c1c1c)),
    bodyText2: TextStyle(color: Color(0xff808080)),
  ),
);

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: theme.scaffoldBackgroundColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: theme.scaffoldBackgroundColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Goal',
      theme: theme,
      darkTheme: theme,
      home: CalculatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
