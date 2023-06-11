
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class K
{
  static const primaryColor =Color(0xff3366FF);
  static const mainColor = Color(0xffD6E4FF) ;
  static const darkBlue = Color(0xff02337A) ;
  static const blackColor = Colors.black ;
  static const whiteColor = Colors.white ;

  static final sizeBoxH = SizedBox(height:25.h  );
  static final sizeBoxW = SizedBox(width:25.w );


  static final boxDecoration = BoxDecoration(
    border: Border.all(
      color: primaryColor ,
      width: 2.w ,
    ),
    borderRadius: BorderRadius.circular(10.r),
  );
}