import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../componant/custom_button.dart';
import '../../../componant/custom_city.dart';
import '../../../const/style.dart';
import '../done create/done_create.dart';
import 'controller type of city/type_of_city_controller.dart';

class TypeOfCity extends StatelessWidget {
   TypeOfCity({Key? key}) : super(key: key);

  final control = Get.put(TypeOfCityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(right: 24.w, left: 24.w),
            child: GetBuilder<TypeOfCityController>(
            init: TypeOfCityController(),
            builder: (controller) =>Column(children: [
              SizedBox(
                height: 30.h,
              ),
              Text("Where are you preferred Location?",
                  style: TextStyle(
                    fontSize: 24.sp,
                  )),
              SizedBox(
                height: 12.h,
              ),
              Text(
                  "Let us know, where is the work location you want at this time, so we can adjust it.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xff737379),
                  )),
              SizedBox(
                height: 36.h,
              ),
              CupertinoSlidingSegmentedControl(
                  backgroundColor: const Color(0xffF4F4F5),
                  thumbColor: const Color(0xff091A7A),
                  padding: EdgeInsets.all(4.r),
                  groupValue: control.groupValue,
                  children: {
                    0: SizedBox(
                      width: 200.w,
                      height: 50.h,
                      child: Center(
                          child: Text(
                        "Work From Office",
                        style: TextStyle(
                            color: control.groupValue == 1
                                ? Colors.black
                                : Colors.white),
                      )),
                    ),
                    1: SizedBox(
                      width: 200.w,
                      height: 50.h,
                      child: Center(
                          child: Text(
                        "Remote Work",
                        style: TextStyle(
                            color: control.groupValue == 0
                                ? Colors.black
                                : Colors.white),
                      )),
                    ),
                  },
                  onValueChanged: (value) {
                    control.changeValue(value);
                  }),
               SizedBox(
                height: 24.h,
              ),
               Text("Select the country you want for your job",
                  style: TextStyle(color: Colors.grey, fontSize: 16.sp)),
               SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CustomCity(
                        onTap: control.onTap,
                        index: 0,
                        fun: ()
                        {
                          control.changeOnTap(0);
                        },
                      ),
                      CustomCity(
                        onTap: control.onTap,
                        index: 1,
                        fun: ()
                        {
                          control.changeOnTap(1);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomCity(
                        onTap: control.onTap,
                        index: 2,
                        fun: ()
                        {
                          control.changeOnTap(2);
                        },
                      ),
                      CustomCity(
                        onTap: control.onTap,
                        index: 3,
                        fun: ()
                        {
                          control.changeOnTap(3);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomCity(
                        onTap: control.onTap,
                        index: 4,
                        fun: ()
                        {
                          control.changeOnTap(4);
                        },
                      ),
                      CustomCity(
                        onTap: control.onTap,
                        index: 5,
                        fun: ()
                        {
                          control.changeOnTap(5);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomCity(
                        onTap: control.onTap,
                        index: 6,
                        fun: ()
                        {
                          control.changeOnTap(6);
                        },
                      ),
                      CustomCity(
                        onTap: control.onTap,
                        index: 7,
                        fun: ()
                        {
                          control.changeOnTap(7);
                        },
                      ),
                      CustomCity(
                        onTap: control.onTap,
                        index: 8,
                        fun: ()
                        {
                          control.changeOnTap(8);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomCity(
                        onTap: control.onTap,
                        index: 9,
                        fun: ()
                        {
                          control.changeOnTap(9);
                        },
                      ),
                      CustomCity(
                        onTap: control.onTap,
                        index: 10,
                        fun: ()
                        {
                          control.changeOnTap(10);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomCity(
                        onTap: control.onTap,
                        index: 11,
                        fun: ()
                        {
                          control.changeOnTap(11);
                        },
                      ),
                      CustomCity(
                        onTap: control.onTap,
                        index: 12,
                        fun: ()
                        {
                          control.changeOnTap(12);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 63.h,
              ),
              CustomButton(
                  text: "Next",
                  fun: ()
                  {
                    Get.to(DoneCreate());
                  },
                  buttonColor: K.primaryColor,
                  textColor: Colors.white),
            ]),
            ),
          ),
        ),
      ),
    );
  }
}
