import 'package:flutter/material.dart';
import 'settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Setting',
      theme: ThemeData(
        // set font family
        
        primarySwatch: Colors.grey,
        // set the background color for the whole app to white
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: TextTheme(
        //   bodyText1: const TextStyle(fontFamily: 'chiller'),
        // ),
      ),
      home: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: UserSettingsPage(),
      ),
      
    
    );
  }
}
