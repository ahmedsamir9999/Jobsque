import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/componant/custom_icons.dart';
import 'package:jobsque/const/style.dart';

class CustomSavedJob extends StatelessWidget {

   final String urlImage ;
   final String jobTitle ;
   final String company ;
   final String location ;
   final String time ;
   final void Function()? fun ;

   const CustomSavedJob({super.key,
     required this.urlImage,
     required this.jobTitle,
     required this.company,
     required this.location,
     required this.time,
     required this.fun,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsetsDirectional.all(24.sp),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),

                      ),
                      child: Image.network(
                          urlImage,
                          fit:BoxFit.cover,
                      ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  SizedBox(
                    width: 155.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jobTitle,
                          style: TextStyle(
                            color: K.blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          '$company • $location',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: const Color(0xff374151),
                              fontSize: 12.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  IconButton(
                      onPressed: fun ,
                      icon: Icon(CustomIcons.more,size: 24.sp,)),
                ]
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                      time,
                    style: TextStyle(
                      color: const Color(0xff374151),
                      fontSize: 12.sp,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.access_time,size: 12.sp),
                  SizedBox(
                    width: 6.w,
                  ),
                  Text(
                    'Be an early applicant',
                    style: TextStyle(
                      color: const Color(0xff374151),
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(
                color: Color(0xffE5E7EB),
              ),
            ],
          ),
        )
      ],
    );
  }
}
