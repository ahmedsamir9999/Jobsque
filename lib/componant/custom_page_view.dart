


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';

class CustomPageView extends StatelessWidget {

  String image;
  String text1;
  String text2;
  String text3;
  String smallText;

  CustomPageView({super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        SizedBox(height: 24.h,),
        Padding(
          padding: EdgeInsets.only(left: 24.w,right: 24.w),
          child: Column(
            children: [
              RichText(
                maxLines:3,
                textAlign: TextAlign.start,
                text:  TextSpan(
                    text: text1,style: TextStyle(
                    color: K.blackColor,
                    fontSize: 32.sp,
                  //  fontFamily: "lib/fonts/SFPRODISPLAYBLACKITALIC.OTF"
                ),
                    children: [
                      TextSpan(
                        text: text2,
                        style: const TextStyle(color: K.primaryColor),
                      ),
                      TextSpan(
                          text: text3,
                          style: const TextStyle(
                              color: K.blackColor
                          ))]
                ),
              ),
              SizedBox(height: 12.h,),
              Text(smallText,style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey
              ),)
            ],
          ),
        ),

      ],
    );
  }
}
