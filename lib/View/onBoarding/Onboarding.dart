import '../Pageview/Pageview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
          Expanded(
            child: (Container(
              child: PageViewCustom())),
          ),
        ],
      )),
    );
  }
}
