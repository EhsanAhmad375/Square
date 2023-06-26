import 'package:flutter/material.dart';
import '../OnBoarding/OnBoarding.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class AnimatedSplash extends StatelessWidget {
  const AnimatedSplash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.white, Colors.white, Colors.yellow],
          // Define your gradient colors here
        ),
      ),
      child: Container(
        height: 10,
        color: Colors.transparent, // Set the background color here

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30.h,
              width: 35.h,
              child: AnimatedSplashScreen(
                splashIconSize: MediaQuery.of(context).size.height,
                duration: 3000,
                animationDuration: Duration(seconds: 2),
                splash: Image.asset(
                  'asset/Frames.png',
                ),
                nextScreen: OnBoarding(),
                splashTransition: SplashTransition.fadeTransition,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
