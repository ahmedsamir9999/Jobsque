import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_icons.dart';

class CustomJob extends StatelessWidget {
  final String name;
  final String image;
  final String jobTime;
  final String jobLevel;
  final String salary;
  final String companyName;
  final bool click ;
  final void Function()? fun ;
  final void Function()? add ;

  const CustomJob({
    super.key,
    required this.name,
    required this.image,
    required this.jobTime,
    required this.jobLevel,
    required this.salary,
    required this.companyName,
    required this.fun,
    required this.click,
    required this.add
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Column(
        children: [
          SizedBox(height: 22.h),
          Row(
            children: [
              Image.asset("lib/assets/images/Zoom Logo.png"),
              SizedBox(
                width: 16.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(color: Colors.black, fontSize: 18.sp)),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text("$companyName • United States",
                      style: TextStyle(color: Colors.black, fontSize: 12.sp)),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  onPressed: add,
                  icon: click == true
                      ? Icon(
                    CustomIcons.archive_minus_bold,
                    color: Colors.blue,
                    size: 24.sp,
                  )
                      : Icon(
                    CustomIcons.archive_minus,
                    color: Colors.black,
                    size: 24.sp,
                  )
              ),
            ],
          ),
          SizedBox(height: 22.h),
          Row(
            children: [
              Container(
                height: 26.h,
                width: 73.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Color.fromRGBO(214, 228, 255, 1),
                ),
                child: Center(
                    child: Text(jobTime,
                        style: TextStyle(color: Colors.blue, fontSize: 12.sp))),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                height: 26.h,
                width: 73.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                  color: const Color.fromRGBO(214, 228, 255, 1),
                ),
                child: Center(
                    child: Text("Remote",
                        style: TextStyle(color: Colors.blue, fontSize: 12.sp))),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                height: 26.h,
                width: 73.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                  color: const Color.fromRGBO(214, 228, 255, 1),
                ),
                child: Center(
                    child: Text(jobLevel,
                        style: TextStyle(color: Colors.blue, fontSize: 12.sp))),
              ),
              const Spacer(
                flex: 1,
              ),
              Text("\$ $salary",
                  style: TextStyle(color: Colors.green, fontSize: 16.sp)),
              Text("/Month",
                  style: TextStyle(color: Colors.black, fontSize: 12.sp)),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
