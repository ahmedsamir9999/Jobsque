import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../componant/custom_button.dart';

class DoneCreate extends StatelessWidget {
  const DoneCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 24.w, left: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon:  Icon(Icons.arrow_back_outlined, size: 24.sp),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) =>CreateAccount2() ,));
                    },
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Image.asset("lib/assets/images/Success Account Ilustration.png"),
              SizedBox(
                height: 24.h,
              ),
              Text("Your account has been set up!",
                  style: TextStyle(fontSize: 24.sp)),
              SizedBox(
                height: 8.h,
              ),
              Text("We have customized feeds according to your",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff6B7280))),
               Text(" preferences",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff6B7280))),
              const Spacer(
                flex: 1,
              ),
              CustomButton(
                  text: "Get Started",
                  fun: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) =>HomeNavigationBar() ,));
                  },
                  buttonColor: Color(0xff3366FF),
                  textColor: Colors.white),
               SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}