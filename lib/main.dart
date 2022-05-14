import 'package:flutter/material.dart';
import 'package:naija_cabbie/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '9ja Cabbie',
      theme: ThemeData(
        fontFamily: 'Poppins',
        canvasColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}
