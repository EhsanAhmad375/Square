import 'package:flutter/material.dart';
import 'View/Splash/animatedSplash.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveSizer(builder: (context, orientation, screenType) {
        return AnimatedSplash();
      }),
    );
  }
}
