import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/Screens/home%20screen/home_sereen.dart';
import 'package:jobsque/Screens/navigator%20bar%20screen/navigator_bar_screen.dart';
import 'package:jobsque/componant/custom_button.dart';

class ApplyDone extends StatelessWidget {
  const ApplyDone({Key? key}) : super(key: key);

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
                    icon: Icon(Icons.arrow_back_outlined, size: 24.sp),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Text("Apply Job"),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Image.asset("lib/assets/images/Data Ilustration.png"),
              SizedBox(
                height: 24.h,
              ),
              Text("Your data has been",
                  style: TextStyle(fontSize: 24.sp)),
              Text("successfully sent",
                  style: TextStyle(fontSize: 24.sp)),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                width: 300.w,
                child: Text("You will get a message from our team, about the announcement of employee acceptance",
                    style: TextStyle(fontSize: 14.sp, color: Color(0xff6B7280))),
              ),
              const Spacer(
                flex: 1,
              ),
              CustomButton(
                  text: "Back to home",
                  fun: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) =>NavigatorScreen() ,));
                  },
                  buttonColor: const Color(0xff3366FF),
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