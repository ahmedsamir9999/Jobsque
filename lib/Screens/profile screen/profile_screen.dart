import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque/Screens/edite%20profile/edite_profile.dart';
import 'package:jobsque/Screens/profile%20screen/profile%20controller/profile_controller.dart';
import 'package:jobsque/componant/custom_icons.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final control = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      initState: (state) {
        control.onReady();
      },
      builder: (controller) => Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 0,
        //   elevation: 0,
        //   systemOverlayStyle: const SystemUiOverlayStyle(
        //     statusBarColor: Color(0xffD6E4FF),
        //   ) ,
        // ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 190.h,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffD6E4FF),
                  ),
                  SizedBox(
                    height: 52.h,
                  ),
                  Text(
                    control.profile!.data!.name.toString(),
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "Senior UI/UX Designer",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff6B7280),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(24.sp),
                    padding: EdgeInsets.all(8.sp),
                    height: 80.h,
                    width: 327.w,
                    decoration: const BoxDecoration(
                        // color: Colors.white
                        color: Color(0xffFAFAFA)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Column(
                          children: [
                            Text(
                              "Applied",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff6B7280),
                              ),
                            ),
                            const Spacer(),
                            Text("25", style: TextStyle(fontSize: 20.sp)),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                            height: 30.h,
                            width: 2.w,
                            child: Divider(
                                height: 1.h,
                                color: const Color(0xffD1D5DB),
                                thickness: 30.w,
                                indent: 0)),
                        const Spacer(),
                        Column(
                          children: [
                            Text(
                              "Reviewed",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff6B7280),
                              ),
                            ),
                            const Spacer(),
                            Text("26", style: TextStyle(fontSize: 20.sp)),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                            height: 30.h,
                            width: 2.w,
                            child: Divider(
                                height: 1.h,
                                color: const Color(0xffD1D5DB),
                                thickness: 30.w,
                                indent: 0)),
                        const Spacer(),
                        Column(
                          children: [
                            Text("Contacted",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xff6B7280),
                                )),
                            Spacer(),
                            Text("27", style: TextStyle(fontSize: 20.sp)),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      Text("About",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xff6B7280),
                          )),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            // showBottomSheet(
                            //     builder: (context) => Container(
                            //       height: 230,
                            //       width: MediaQuery.of(context).size.width,
                            //       decoration: BoxDecoration(
                            //           color: Colors.white,
                            //           borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                            //           border: Border.all(color: Colors.grey)
                            //       ),
                            //       child:Center(
                            //         child: Padding(
                            //           padding: const EdgeInsets.only(right: 24,left: 24),
                            //           child:  TextFormField(
                            //             onFieldSubmitted: (value) => Navigator.pop(context),
                            //             strutStyle: StrutStyle(height: 5,),
                            //             validator: (value) {
                            //               if (value!.length < 5) {
                            //                 return "it should more than 5 letters or numbers ";
                            //               } else {
                            //                 return null;
                            //               }
                            //             },
                            //             controller: nameController,
                            //             keyboardType: TextInputType.name,
                            //             decoration: InputDecoration(
                            //                 hintText: "About",
                            //                 border: OutlineInputBorder(
                            //                   borderRadius: BorderRadius.circular(8),
                            //                 )),
                            //           ),),
                            //       ),
                            //     ),
                            //     context:context );
                          },
                          child: Text(
                            "Edit",
                            style: TextStyle(fontSize: 14.sp),
                          )),
                      SizedBox(
                        width: 24.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Text(
                      "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff6B7280),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 36.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffF4F4F5),
                        border: Border.all(
                          color: const Color(0xffE5E7EB),
                        )),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 24.w,
                        left: 24.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "General",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color(0xff6B7280),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.sp),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffD6E4FF),
                              radius: 25.r,
                              child: const Icon(CustomIcons.profile),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            const Text("Edit Profile"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => EditeProfile()));
                                  Get.to(EditeProfile());
                                },
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffD6E4FF),
                              radius: 25.r,
                              child: const Icon(CustomIcons.folder_favorite),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Text("Portfolio"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => Portfolio()));
                                },
                                icon: Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffD6E4FF),
                              radius: 25.r,
                              child: const Icon(CustomIcons.global),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Text("Langauge"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => Language()));
                                },
                                icon: Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffD6E4FF),
                              radius: 25.r,
                              child: const Icon(CustomIcons.notification_1),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Text("Notification"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => NotificationScreen()));
                                },
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 14, bottom: 14),
                          child: Divider(
                              height: 10,
                              color: Colors.grey,
                              thickness: 1,
                              indent: 0),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffD6E4FF),
                              radius: 25.r,
                              child: const Icon(CustomIcons.lock),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            const Text("Login and security"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => LoginAndSecurity()));
                                },
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 36.h,
                    color: const Color(0xffE5E7EB),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 24.w,
                        left: 24.w,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Others"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.sp),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Accesibility"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                        Row(
                          children: [
                            Text("Help Center"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                        Row(
                          children: [
                            Text("Terms & Conditions"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                        Row(
                          children: [
                            Text("Privacy Policy"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                          child: Divider(
                              height: 10.h,
                              color: Colors.grey,
                              thickness: 1.w,
                              indent: 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 24.w,
                right: 24.w,
                top: 0,
                child: Column(
                  children: [
                    SizedBox(
                      height: 28.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            // Navigator.of(context).pushReplacement(MaterialPageRoute(
                            //   builder: (context) => HomeNavigationBar(pageNumber: 0),
                            // ));
                          },
                        ),
                        const Spacer(),
                        const Text("Profile"),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CustomIcons.logout,
                              color: Colors.red,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 65.h,
                    ),
                    CircleAvatar(
                      radius: 49.r,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 43.r,
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
