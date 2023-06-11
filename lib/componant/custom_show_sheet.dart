import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_icons.dart';

class CustomShowSheet extends StatelessWidget {

 final void Function()? fun1 ;
 final void Function()? fun2 ;
 final void Function()? fun3 ;

   const CustomShowSheet({super.key,
   required this.fun1,
   required this.fun2,
   required this.fun3,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 271.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r), topRight: Radius.circular(50.r)),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: EdgeInsets.only(right: 24.w, left: 24.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
                width: 100.h,
                child: Divider(
                  height: 10.h,
                  color: Colors.black,
                  thickness: 2,
                )),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: fun1,
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Row(children: [
                    const Icon(CustomIcons.directbox_default_2),
                    SizedBox(
                      width: 20.w,
                    ),
                    const Text("Apply Job"),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: fun2,
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Row(children: [
                    const Icon(CustomIcons.export_icon),
                    SizedBox(
                      width: 20.w,
                    ),
                    const Text("Share via..."),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: fun3,
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Row(children: [
                    const Icon(CustomIcons.archive_minus),
                    SizedBox(
                      width: 20.w,
                    ),
                    const Text("Cancel save"),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
