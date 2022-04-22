import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home_screen.dart';

//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Color(0xff29274f),
      ),
     
      home: HomeScreen(),
    );
  }
}

