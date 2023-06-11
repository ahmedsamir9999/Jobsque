import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:jobsque/Screens/apply%20Job/apply_job_screen.dart';
import 'package:jobsque/Screens/job%20details/job%20details%20controller/job_details_controller.dart';

import '../../componant/custom_button.dart';
import '../../componant/custom_icons.dart';

class JobDetailsScreen extends StatelessWidget {
  final String? title;
  final String? comName;
  final String? location;
  final String? jobTimeType;
  final String? jobLevel;
  final String? salary;
  final String? aboutComp;
  final String? compWebsite;
  final String? compEmail;
  final String? jobSkill;
  final String? jobDescription;
  final String? favorites;

  JobDetailsScreen({
    super.key,
    required this.title,
    required this.comName,
    required this.location,
    required this.salary,
    required this.jobLevel,
    required this.jobTimeType,
    required this.aboutComp,
    required this.compEmail,
    required this.compWebsite,
    required this.jobDescription,
    required this.jobSkill,
    required this.favorites,
  });

  final control = Get.put(JobDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
          child: Stack(
            children: [
              GetBuilder<JobDetailsController>(
                init: JobDetailsController(),
                builder: (controller) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                          onPressed: () {},
                        ),
                        const Spacer(),
                        Text(
                          'Job Details',
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CustomIcons.archive_minus,
                              size: 20.sp,
                            ))
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 32.h,
                          ),
                          Image.asset(
                            "lib/assets/images/Zoom Logo.png",
                            height: 48.h,
                            width: 48.w,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            title!,
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          SizedBox(
                            width: 150.w,
                            child: Center(
                              child: Text(
                                "$comName • $location ",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff374151),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              const Spacer(
                                flex: 6,
                              ),
                              Container(
                                height: 26.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.r)),
                                  color: const Color.fromRGBO(214, 228, 255, 1),
                                ),
                                child: Center(
                                    child: Text(jobTimeType!,
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 12.sp))),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 26.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.r)),
                                  color: const Color.fromRGBO(214, 228, 255, 1),
                                ),
                                child: Center(
                                    child: Text("Onside",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 12.sp))),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 26.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.r)),
                                  color: const Color.fromRGBO(214, 228, 255, 1),
                                ),
                                child: Center(
                                    child: Text(jobLevel!,
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 12.sp))),
                              ),
                              const Spacer(
                                flex: 6,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    CupertinoSlidingSegmentedControl(
                        backgroundColor: const Color(0xffF4F4F5),
                        thumbColor: const Color(0xff091A7A),
                        padding: EdgeInsets.all(4.sp),
                        groupValue: control.groupValue,
                        children: {
                          0: SizedBox(
                            width: 200.w,
                            height: 50.h,
                            child: Center(
                                child: Text(
                              "Description",
                              style: TextStyle(
                                  color: control.groupValue == 0
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                          1: SizedBox(
                            width: 200.w,
                            height: 50.h,
                            child: Center(
                                child: Text(
                              "Company",
                              style: TextStyle(
                                  color: control.groupValue == 1
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                          2: SizedBox(
                            width: 200.w,
                            height: 50.h,
                            child: Center(
                                child: Text(
                              "People",
                              style: TextStyle(
                                  color: control.groupValue == 2
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        },
                        onValueChanged: (value) {
                          control.groupChange(value);
                        }),
                    SizedBox(
                      height: 27.h,
                    ),
                    Expanded(
                      child: CarouselSlider(
                        carouselController: control.controller,
                        options: CarouselOptions(
                          disableCenter: true,
                          onPageChanged: (index, reason) {
                            control.groupChange(index);
                          },
                          viewportFraction: 1,
                        ),
                        items: [
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Job Description",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  jobDescription!,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff4B5563),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Skill Required",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  jobSkill!,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff4B5563),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Contact Us",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 65.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          border: Border.all(
                                              color: const Color(0xffE5E7EB)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(7.sp),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Email",
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xff9CA3AF),
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              Text(
                                                compEmail!,
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 65.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          border: Border.all(
                                              color: const Color(0xffE5E7EB)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(7.sp),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Website",
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xff9CA3AF),
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              Text(
                                                compWebsite!,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Text(
                                  "About Company",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Text(
                                  aboutComp!,
                                  style: TextStyle(
                                    color: const Color(0xff4B5563),
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "6 Employees For",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      Text(
                                        "UI/UX Design",
                                        style: TextStyle(
                                          color: const Color(0xff6B7280),
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 150.w,
                                    height: 38.h,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Row(
                                      children: [
                                        Text("      UI/UX Designer",
                                            style: TextStyle(fontSize: 12.sp)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_downward,
                                              size: 12.sp,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 28.h,
                              ),
                              Expanded(
                                child: ListView.separated(
                                  separatorBuilder: (context, index) => Column(
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Divider(
                                        height: 20.h,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  itemCount: 20,
                                  itemBuilder: (context, index) =>
                                      Center(child: Text(index.toString())),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40.h,
                left: 0,
                right: 0,
                child: CustomButton(
                    text: "Apply now",
                    fun: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ApplyJob(),));
                      Get.to(ApplyJobScreen());
                    },
                    buttonColor: Colors.blue,
                    textColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
