import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobsque/componant/custom_job.dart';
import 'package:jobsque/helper/sharedprefeances.dart';
import 'package:jobsque/model/JobsModule.dart';

import '../../componant/custom credit.dart';
import '../../componant/custom_icons.dart';
import '../../services/services_API.dart';
import '../job details/job_details.dart';
import '../search screen/search_screen.dart';
import 'home screen controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final control = Get.put(HomeScreenController());
  final ser = Services();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.w, left: 24.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, ${MyCache.GetString(key: MyChachKey.name)}👋",
                              style: TextStyle(
                                  fontSize: 24.sp, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text("Create a better future for yourself here",
                              style:
                                  TextStyle(fontSize: 14.sp, color: Colors.grey)),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xffD1D5DB),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 24.r,
                          child: Icon(Icons.recycling_outlined),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchScreen(),
                      ));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.sp),
                        child: Row(
                          children: [
                            const Icon(CustomIcons.search_normal),
                            SizedBox(
                              width: 14.w,
                            ),
                            Text("Search....",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text("Suggested Job",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp)),
                      const Spacer(
                        flex: 1,
                      ),
                      TextButton(onPressed: () {}, child: const Text("View all")),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 24.w,
                  ),
                  const CustomCredit(
                    colorBack: Color(0xff091A7A),
                    colorText: Colors.white,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const CustomCredit(
                    colorBack: Color(0XFFF4F4F5),
                    colorText: Colors.black,
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24),
              child: Column(children: [
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Text("Recent Job",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold)),
                    const Spacer(
                      flex: 1,
                    ),
                    TextButton(onPressed: () {}, child: const Text("View all")),
                  ],
                ),
                SizedBox(height: 8.h),
              GetBuilder<HomeScreenController>(
                  init: HomeScreenController(),
                initState:(state) {
                  control.onInit();
                },
                  builder: (controller) => FutureBuilder(
                    future: control.showJob(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        JobsModule jobs = snapshot.data;
                        return ListView.builder(
                          shrinkWrap: true,
                         // physics: const NeverScrollableScrollPhysics(),
                          itemCount: jobs.data?.length,
                          itemBuilder: (builderContext, index) => CustomJob(

                            fun: ()
                            {
                              Get.to(JobDetailsScreen(
                                aboutComp: jobs.data![index].aboutComp.toString(),
                                comName: jobs.data![index].compName.toString(),
                                compEmail: jobs.data![index].compEmail.toString(),
                                compWebsite:jobs.data![index].compWebsite.toString() ,
                                favorites:jobs.data![index].favorites.toString() ,
                                jobDescription:jobs.data![index].jobDescription.toString() ,
                                jobLevel:jobs.data![index].jobLevel.toString() ,
                                jobSkill:jobs.data![index].jobSkill.toString() ,
                                jobTimeType:jobs.data![index].jobTimeType.toString() ,
                                location: jobs.data![index].location.toString(),
                                salary:jobs.data![index].salary.toString() ,
                                title:jobs.data![index].name.toString() ,
                              ));
                            },
                              name: jobs.data![index].name.toString(),
                              image: jobs.data![index].image.toString(),
                              jobTime: jobs.data![index].jobTimeType.toString(),
                              jobLevel: jobs.data![index].jobLevel.toString(),
                              salary: jobs.data![index].salary.toString(),
                              companyName: jobs.data![index].compName.toString(),
                              click: control.likes[index] ,
                            add: ()
                            {
                               control.likeFun(index);
                              // await control.putFav(jobs.data![index].id.toString());
                            },
                          ),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
