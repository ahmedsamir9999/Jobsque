

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobsque/componant/custom_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../componant/custom_button.dart';
import '../../const/style.dart';
import '../login screen/login_screen.dart';
import 'onboard controller/onboard_controller.dart';



class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});

  final control = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
              ),
              child: Row(
                children: [
                  Image.asset("lib/assets/images/Logo1.png"),
                  // SizedBox(width:MediaQuery.of(context).size.width/2),
                  const Spacer(
                    flex: 1,
                  ),
                  TextButton(
                    onPressed: () {
                       Get.offAll(() => LoginScreen());
                    },
                    child: Text("Skip", style: TextStyle(fontSize: 16.sp)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 655.h,
              child: GetBuilder<OnboardController>(
                init: OnboardController(),
                builder: (controller) => PageView(
                controller: control.pageController,
                onPageChanged: (value) {
                  control.changNumPage(value) ;
                },
                children: [
                  CustomPageView(
                      text1: "Find a job, and ",
                      text2: "start building ",
                      text3: "your career from now on",
                      smallText:
                          "Explore over 25,924 available job roles and upgrade your operator now.",
                      image: "lib/assets/images/Group 1.png"),
                  CustomPageView(
                      text1: "Hundreds of jobs are waiting for you to ",
                      text2: "join together",
                      text3: "",
                      smallText:
                          "Immediately join us and start applying for the job you are interested in.",
                      image: "lib/assets/images/Background 2.png"),
                  CustomPageView(
                      text1: "Get the best ",
                      text2: "choice for the job ",
                      text3: "you've always dreamed of",
                      smallText:
                          "The better the skills you have, the greater the good job opportunities for you.",
                      image: "lib/assets/images/Background 3.png"),
                ],
              ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            SmoothPageIndicator(
                effect: CustomizableEffect(
                    dotDecoration: DotDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: K.mainColor),
                    activeDotDecoration: DotDecoration(
                        color: K.primaryColor,
                        borderRadius: BorderRadius.circular(8.r))),
                controller: control.pageController,
                count: 3),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: EdgeInsets.only(
              left: 24.w,
              right: 24.w,
            ),
              child: CustomButton(
                text: control.numPage == 2 ? "Get Start" : "Next",
                fun: () {
                  if (control.numPage == 2) {
                       Get.offAll(() => LoginScreen());
                  } else {
                    control.pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  }
                },
                buttonColor: K.primaryColor,
                textColor: K.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
