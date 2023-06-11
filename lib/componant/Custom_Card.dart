import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../Screens/create account/type of work/controller/type_of_work_controller.dart';
import 'custom_icons.dart';

class CustomCard extends StatelessWidget {
  final dynamic Function() fun;

  final int index;
  final List<bool> onTaap;

  final control = Get.put(TypeOfWorkController());

  CustomCard({
    super.key,
    required this.index,
    required this.fun,
    required this.onTaap,
  });

  final List texts = [
    "UI/UX Designer",
    "Ilustrator Designer",
    "Developer",
    "Management",
    "Information Technology",
    "Research and Analytics",
  ];

  final List<IconData> icons = [
    CustomIcons.bezier,
    CustomIcons.pen_tool_2,
    CustomIcons.code,
    CustomIcons.graph,
    CustomIcons.monitor_mobbile,
    CustomIcons.cloud_add,
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        height: 155.h,
        width: 156.w,
        decoration: BoxDecoration(
            color: control.onTaap[index] == true
                ? const Color(0xffD6E4FF)
                : const Color(0xffFAFAFA),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
                color: control.onTaap[index] == true
                    ? const Color(0xff3366FF)
                    : const Color(0xffD1D5DB))),
        child: Padding(
          padding: EdgeInsets.all(14.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 1,
              ),
              CircleAvatar(
                backgroundColor: control.onTaap[index] == true
                    ? const Color(0xff3366FF)
                    : const Color(0xffD1D5DB),
                radius: 25.r,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24.r,
                    child: Icon(
                      icons[index],
                      color: control.onTaap[index] == true
                          ? const Color(0xff3366FF)
                          : Colors.black,
                    )
                    // Image.asset(widget.image)
                    ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(texts[index], style: TextStyle(fontSize: 16.sp)),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// Container(
// height: 125,
// width: 156,
// decoration: BoxDecoration(
// color: control.onTaap[index] == true
// ? const Color(0xffD6E4FF)
//     : const Color(0xffFAFAFA),
// borderRadius: const BorderRadius.all(Radius.circular(20)),
// border: Border.all(
// color: control.onTaap[index] == true
// ? const Color(0xff3366FF)
//     : const Color(0xffD1D5DB))),
// child: Padding(
// padding: EdgeInsets.all(14.sp),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const Spacer(
// flex: 1,
// ),
// CircleAvatar(
// backgroundColor:
// control.onTaap[index] == true ? Color(0xff3366FF) : Color(0xffD1D5DB),
// radius: 25.r,
// child: CircleAvatar(
// backgroundColor: Colors.white,
// radius: 24.r,
// child: Icon(
// control.icons[index],
// color: control.onTaap[index] == true ? Color(0xff3366FF) : Colors.black,
// )
// // Image.asset(widget.image)
// ),
// ),
// const Spacer(
// flex: 1,
// ),
// Text(control.texts[index], style:  TextStyle(fontSize: 16.sp)),
// const Spacer(
// flex: 1,
// ),
// ],
// ),
// ),
// ),
