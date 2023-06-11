

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCity extends StatelessWidget {

  final dynamic Function() fun ;
  final List<bool> onTap;
  final int? index;

  CustomCity(
      {
        super.key,
        required this.index,
        required this.fun,
        required this.onTap,
      });

  final List<String> city = [
    "United States",
    "Malaysia",
    "Singapore",
    "Indonesia",
    "Philiphines",
    "Polandia",
    "India",
    "Vietnam",
    "China",
    "Canada",
    "Saudi Arabia",
    "Argentina",
    "Brazil"
  ];

 final List<String> flag=["lib/assets/images/cities/united states.png",
    "lib/assets/images/cities/malaysia.png",
    "lib/assets/images/cities/singapore.png",
    "lib/assets/images/cities/indonesia.png",
    "lib/assets/images/cities/philiphines.png",
    "lib/assets/images/cities/polandia.png",
    "lib/assets/images/cities/india.png",
    "lib/assets/images/cities/vietnam.png",
    "lib/assets/images/cities/china.png",
    "lib/assets/images/cities/canada.png",
    "lib/assets/images/cities/saudi arabia.png",
    "lib/assets/images/cities/argentina.png",
    "lib/assets/images/cities/brazil.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w,bottom:16.h ),
      child: GestureDetector(
        onTap: fun,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
              color: onTap[index!] ==true? Color(0xffD6E4FF):Color(0xffFAFAFA),
              borderRadius:  BorderRadius.all(Radius.circular(100.r)),
              border: Border.all(color: onTap[index!]==true?Color(0xff3366FF):Color(0xffE5E7EB))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding:  EdgeInsets.all(8.r),
                child: CircleAvatar(
                  backgroundColor: onTap[index!]==true?Color(0xff3366FF):Color(0xffE5E7EB),
                  radius: 26.r,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 26.r,
                    child: Image.asset(flag[index!]),
                    // Image.asset(widget.image)
                  ),
                ),
              ),
             // SizedBox(width: 8.w,),
              Center(child: Padding(
                padding:  EdgeInsets.only(right: 14.w),
                child: Text(city[index!], style: TextStyle(fontSize: 16.sp)),
              )),
            ],
          ),
        ),
      ),
    );
  }
}