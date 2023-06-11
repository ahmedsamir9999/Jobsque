import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque/Screens/saved%20screen/saved%20controller/saved_controller.dart';
import 'package:jobsque/componant/custom_saved_job.dart';
import 'package:jobsque/const/style.dart';

import '../../componant/custom_icons.dart';
import '../../componant/custom_show_sheet.dart';
import '../../model/JobsModule.dart';

class SaveScreen extends StatelessWidget {
  SaveScreen({Key? key}) : super(key: key);

  final control = Get.put(SavedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SavedController>(
          initState:(state) {
            control.onInit();
          },
        init: SavedController(),
        builder: (controller) => Column(
          children: [
            SizedBox(
              height: 60.h,
              width: double.infinity,
            ),
            Text(
              'Saved',
              style: TextStyle(
                color: K.blackColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            control.jobs!.data!.isEmpty
                ? SizedBox(
                    height: 0.1.h,
                  )
                : Container(
                    height: 36.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffF4F4F5),
                        border: Border.all(color: Color(0xffE5E7EB))),
                    child: Center(
                      child: Text(
                        "${control.jobs?.data?.length} job saved",
                        style: TextStyle(
                          color: const Color(0xff6B7280),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
            control.jobs!.data!.isEmpty
                ? Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/assets/images/Saved Ilustration.png'),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          'Nothing has been saved yet',
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: K.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Press the star icon on the job you want to save.',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xff6B7280),
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                        // shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: control.jobs?.data?.length,
                        itemBuilder: (BuildContext context, i) {
                          return Column(
                            children: [
                              CustomSavedJob(
                                  fun: () {

                                    showModalBottomSheet(
                                      clipBehavior: Clip.hardEdge,
                                      context: context,
                                      builder: (context) => CustomShowSheet(
                                        fun1: (){},
                                        fun2: (){},
                                        fun3: ()async
                                        {
                                           control.deleteJob(i);
                                          Navigator.pop(context);
                                        },
                                      ),
                                    );
                                  },
                                  urlImage:
                                      'https://cdn-icons-png.flaticon.com/512/124/124021.png',
                                  jobTitle:
                                      control.jobs!.data![i].name.toString(),
                                  company: control.jobs!.data![i].compName
                                      .toString(),
                                  location: control.jobs!.data![i].location
                                      .toString(),
                                  time: control.jobs!.data![i].createdAt
                                      .toString()),
                            ],
                          );
                        }),
                  ),
          ],
        ),
      ),
    );
  }
}
