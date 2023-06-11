import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {

  VoidCallback fun;
  Color buttonColor;
  Color textColor;
  String text;

  CustomButton(
      {Key? key,
      required this.text,
      required this.fun,
      required this.buttonColor,
      required this.textColor})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(

        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(1000.r)),
          color: buttonColor,
        ),
        child: Center(
            child: Text(
          text,
          style:  TextStyle(
              color: textColor ,
              fontSize: 16.sp),
        )),
      ),
    );
  }
}
