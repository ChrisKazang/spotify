import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login/bienvenuePage.dart';


void main() /*async*/{
  /*WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seenWelcome = prefs.getBool('seensWelcome');*/
  runApp(
      MyApp(
        //seenWelcome: seenWelcome?? false
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Algo',
        home: BienvenuePage()
      /*seenWelcome? LoginPage() : BienvenuePage(),*/
    );
  }
}
