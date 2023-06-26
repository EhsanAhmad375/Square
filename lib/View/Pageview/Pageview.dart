import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:square/Controller/myController.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewCustom extends StatelessWidget {
  PageViewCustom({
    Key? key,
  }) : super(key: key);

  PageController pageController = PageController();
  // MyController myController=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GetBuilder<MyController>(
            init: MyController(),
            builder: (controller) {
              return PageView.builder(
                  controller: pageController,
                  itemCount: controller.pageData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(controller.pageData[index]),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            Container(
                                height: 40.h,
                                width: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                  // color:Colors.black.withOpacity(0.5) ,
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.5),
                                      Colors.black
                                    ],
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      '${controller.titles[index]}',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        '${controller.descriptions[index]}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                  ],
                                )),
                          ]),
                    );
                  });
            }),
        Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 7.h,
              ),
              SmoothPageIndicator(
                  effect: ExpandingDotsEffect(
                      activeDotColor: Colors.yellow,
                      paintStyle: PaintingStyle.fill,
                      dotHeight: 8,
                      dotWidth: 6,
                      radius: 5),
                  controller: pageController,
                  count: 3),
              TextButton(
                  onPressed: () {
                    pageController.nextPage(
                        duration: Duration(seconds: 1), curve: Curves.ease);
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
