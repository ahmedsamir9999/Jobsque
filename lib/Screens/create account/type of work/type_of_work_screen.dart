import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:jobsque/Screens/create%20account/type%20of%20city/type_of_city.dart';
import 'package:jobsque/const/style.dart';

import '../../../componant/Custom_Card.dart';
import '../../../componant/custom_button.dart';
import 'controller/type_of_work_controller.dart';

class TypeOfWorkScreen extends StatelessWidget {
  TypeOfWorkScreen({Key? key}) : super(key: key);

  final control = Get.put(TypeOfWorkController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TypeOfWorkController>(
      init: TypeOfWorkController(),
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(right: 24.w, left: 24.w),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text("What type of work are you interested in?",
                    style: TextStyle(
                      fontSize: 24.sp,
                    )),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                    "Tell us what you’re interested in so we can customise the app for your needs.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff737379),
                    )),
                SizedBox(
                  height: 36.h,
                ),
            SizedBox(
              height: 470.h,
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 148,
                    mainAxisSpacing:20,
                    crossAxisSpacing: 15
                ),
                itemBuilder: (context, index) => CustomCard(
                      index: index,
                      fun: ()
                      {
                        control.changeOnTap(index);
                      },
                  onTaap: control.onTaap,
                  ),
              ),
            ),
                SizedBox(
                  height: 65.h,
                ),
                CustomButton(
                    text: "Next",
                    fun: () {
                      Get.to(TypeOfCity());
                    },
                    buttonColor: K.primaryColor,
                    textColor: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
