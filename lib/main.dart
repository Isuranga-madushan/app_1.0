import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/home.dart';
import 'package:flutter_app3/routes.dart';
import 'package:flutter_app3/theme.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isDark = false;

  void toggleDarkMode(bool newState){
    setState(() {
      isDark = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.amber,
      //       fontFamily: "Nillambari-K7y1W",
      // ),


      theme: MyTheme.lightThema,
      darkTheme: MyTheme.dartThema,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

      // initialRoute: Home.routeName ,
      routes: routes,

      home: Home(
        isDark: isDark,
        toggleDarkMode: toggleDarkMode,
      ),
    );
  }
}

