import 'package:flutter/material.dart';
import 'package:video_call_app/home_page.dart';
import 'package:video_call_app/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"login": (context) => MyLogin(), "home": (context) => MyHome()},
      initialRoute: "login",
    );
  }
}
