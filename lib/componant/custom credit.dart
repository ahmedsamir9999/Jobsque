import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_icons.dart';

class CustomCredit extends StatelessWidget {

 final Color colorBack;
 final Color colorText;

  const CustomCredit({super.key,
    required this.colorBack,
    required this.colorText
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 183.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: colorBack,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          children: [
            Row(children: [
              Image.asset("lib/assets/images/Zoom Logo.png"),
               SizedBox(width: 16.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Product Designer",style: TextStyle(
                      color: colorText,fontSize: 18.sp)),
                  SizedBox(height: 4.h,),
                  Text("Zoom • United States",style: TextStyle(
                      color: const Color(0xff9CA3AF),fontSize: 12.sp)),
                ],
              ),
              SizedBox(width: 32.w,),
              Icon(CustomIcons.archive_minus,color: colorText,),
            ],),
            const Spacer(flex: 1,),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 87.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    color:const Color.fromRGBO (255, 255, 255, 0.14),),
                  child: Center(child: Text("Fulltime",style: TextStyle(color: colorText))),),
                const Spacer(flex: 1,),
                Container(
                  height: 30.h,
                  width: 87.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    color: const Color.fromRGBO (255, 255, 255, 0.14),),
                  child: Center(child: Text("Remote",style: TextStyle(color: colorText))),),
                const Spacer(flex: 1,),
                Container(
                  height: 30.h,
                  width: 87.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    color: const Color.fromRGBO (255, 255, 255, 0.14),
                  ),
                  child: Center(child: Text("Design",style: TextStyle(color: colorText))),),
              ],
            ),
            const Spacer(flex: 1,),
            Row(children: [
              Text("\$12K-15K",style: TextStyle(color: colorText,fontSize: 20.sp)),
              Text("/Month",style: TextStyle(color: colorText,fontSize: 12.sp)),
              const Spacer(flex: 1,),
              Container(
                width: 96.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: const Color(0xff3366FF),
                  borderRadius: BorderRadius.all(Radius.circular(1000.r)),
                ),
                child: Center(child: Text("Apply now",style: TextStyle(color: colorText))),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}

