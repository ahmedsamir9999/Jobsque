import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobsque/Screens/apply%20Job/aplly_done.dart';
import 'package:jobsque/componant/custom_type_of_work.dart';

import '../../componant/custom_button.dart';
import '../../componant/custom_icons.dart';
import 'apply job contoller/applie_job_screen.dart';

class ApplyJobScreen extends StatelessWidget {
  ApplyJobScreen({Key? key}) : super(key: key);

  final control = Get.put(ApplyJobController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        if (control.numPage == 0) {
                          Navigator.of(context).pop();
                        } else {
                          control.pageController.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        }
                      },
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    Text("Apply Job",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w500)),
                    const Spacer(
                      flex: 4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                GetBuilder<ApplyJobController>(
                  init: ApplyJobController(),
                  builder: (controller) => Row(
                    children: [
                      const Spacer(),
                      Column(
                        children: [
                          control.numPage == 0
                              ? CircleAvatar(
                                  radius: 23.r,
                                  backgroundColor: Colors.blue,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 21.5.r,
                                    child: const Center(
                                      child: Text("1"),
                                    ),
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 23.r,
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.done),
                                ),
                          Text("Bio data",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.blue)),
                        ],
                      ),
                      const Spacer(),
                      Text("-----",
                          style: TextStyle(
                              color: control.numPage == 0
                                  ? Colors.grey
                                  : Colors.blue)),
                      const Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 23.r,
                            backgroundColor: control.numPage == 1
                                ? Colors.blue
                                : control.numPage == 2
                                    ? Colors.blue
                                    : Colors.grey,
                            child: CircleAvatar(
                              backgroundColor: control.numPage == 2
                                  ? Colors.blue
                                  : Colors.white,
                              radius: 21.5.r,
                              child: control.numPage == 2
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Center(
                                      child: Text(
                                      "2",
                                      style: TextStyle(
                                          color: control.numPage == 1
                                              ? Colors.blue
                                              : Colors.grey),
                                    )),
                            ),
                          ),
                          Text("Type of work",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: control.numPage == 1
                                      ? Colors.blue
                                      : control.numPage == 2
                                          ? Colors.blue
                                          : Colors.grey)),
                        ],
                      ),
                      const Spacer(),
                      Text("-----",
                          style: TextStyle(
                              color: control.numPage == 2
                                  ? Colors.blue
                                  : Colors.grey)),
                      const Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 23.r,
                            backgroundColor: control.numPage == 2
                                ? Colors.blue
                                : Colors.grey,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 21.5.r,
                              child: Center(
                                  child: Text(
                                "3",
                                style: TextStyle(
                                    color: control.numPage == 2
                                        ? Colors.blue
                                        : Colors.grey),
                              )),
                            ),
                          ),
                          Text("Upload portfolio",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: control.numPage == 2
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                SizedBox(
                    height: 500.h,
                    width: double.infinity,
                    child: PageView(
                      // physics: const NeverScrollableScrollPhysics(),
                      controller: control.pageController,
                      onPageChanged: (index) {
                        control.changePage(index);
                      },
                      children: [
                        Form(
                          key: control.formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bio data",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500)),
                              Text("Fill in your bio data correctly"),
                              SizedBox(
                                height: 28.h,
                              ),
                              Text("Full Name*"),
                              SizedBox(
                                height: 8.h,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.length < 5) {
                                    return "it should more than 5 letters or numbers ";
                                  } else {
                                    return null;
                                  }
                                },
                                controller: control.nameController,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    hintText: "name",
                                    prefixIcon:
                                        const Icon(Icons.person_2_outlined),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                    )),
                              ),
                              SizedBox(
                                height: 28.h,
                              ),
                              Text("Email*"),
                              SizedBox(
                                height: 8.h,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.length < 5) {
                                    return "it should more than 5 letters or numbers ";
                                  } else {
                                    return null;
                                  }
                                },
                                controller: control.emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "email",
                                    prefixIcon:
                                        const Icon(Icons.email_outlined),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text("No.Handphone*"),
                              SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.length < 5) {
                                    return "it should more than 5 letters or numbers ";
                                  } else {
                                    return null;
                                  }
                                },
                                controller: control.phoneController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintText: "Phone Number",
                                    prefixIcon: const Icon(Icons.outlined_flag),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Type of work",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500)),
                              Text("Fill in your bio data correctly"),
                              SizedBox(
                                height: 28.h,
                              ),
                              SizedBox(
                                height: 430.h,
                                child: GetBuilder<ApplyJobController>(
                                  init: ApplyJobController(),
                                  builder: (controller) => ListView.separated(
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      height: 20.h,
                                    ),
                                    itemBuilder: (context, index) =>
                                        CustomTypeOfWork(
                                      index: index,
                                      fun: () {
                                        control.onClick(index);
                                      },
                                      clicks: control.clicks,
                                      names: control.names,
                                    ),
                                    itemCount: 4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Upload portfolio",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text("Fill in your bio data correctly"),
                            SizedBox(
                              height: 28.h,
                            ),
                            Text("Upload CV*"),
                            SizedBox(
                              height: 12.h,
                            ),
                            Container(
                              height: 74,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.sp),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/free-pdf-download-icon-2617-thumb.png",
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Spacer(),
                                          Text(
                                            "Rafif Dian.CV",
                                            style: TextStyle(fontSize: 14.sp),
                                          ),
                                          const Spacer(),
                                          Text(
                                            "CV.pdf 300KB",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff6B7280),
                                            ),
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          CustomIcons.edit_2,
                                          color: Colors.blue,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          CustomIcons.close_circle,
                                          color: Colors.red,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Other File",
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            DottedBorder(
                              color: Colors.blue,
                              radius: Radius.circular(8.r),
                              borderType: BorderType.RRect,
                              dashPattern: [5.w],
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 221.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xffECF2FF),
                                    borderRadius: BorderRadius.circular(8.r)),
                                child: Padding(
                                  padding: EdgeInsets.all(16.sp),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 25.r,
                                        backgroundColor:
                                            const Color(0xffD6E4FF),
                                        child: Image.asset(
                                            "lib/assets/images/Vector.png"),
                                      ),
                                      const Spacer(),
                                      Text("Upload your other file"),
                                      const Spacer(),
                                      Text("Max. file size 10 MB"),
                                      const Spacer(),
                                      Container(
                                        height: 40,
                                        width: 295,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffD6E4FF),
                                            borderRadius:
                                                BorderRadius.circular(100.r),
                                            border:
                                                Border.all(color: Colors.blue)),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(CustomIcons.export_icon),
                                                Text("Add file"),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 70.h,
                ),
                GetBuilder<ApplyJobController>(
                  init: ApplyJobController(),
                  builder: (controller) => CustomButton(
                      text: control.numPage != 2 ? "Next" : 'Submit',
                      fun: () {
                        if (control.numPage == 2) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ApplyDone(),
                          ));
                        } else if (control.numPage == 0) {
                          if (control.formKey.currentState!.validate()) {
                            control.pageController.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.linear);
                          }
                        } else {
                          control.pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        }
                      },
                      buttonColor: Colors.blue,
                      textColor: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
