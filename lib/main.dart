import 'package:flutter/material.dart';
import 'package:jobstreetcopy/Theapps/home_screen.dart';
import 'package:jobstreetcopy/Theapps/login.dart';
import 'package:jobstreetcopy/Theapps/login_screen.dart';
import 'dart:ffi';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginScreen1(),
    );
  }
}
