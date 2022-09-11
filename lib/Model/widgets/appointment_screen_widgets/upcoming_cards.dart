import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../res/app_colors.dart';
import '../../res/app_images.dart';

class UpcomingCards extends StatelessWidget {
  const UpcomingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: height / 4,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: AppColors.inActiveColorPrimary,
        color: AppColors.whiteColor,
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height / 10,
              child: Stack(
                children: [
                  Positioned(
                      left: 5.w,
                      top: 3.h,
                      child: const Text(
                        "Dr. Chris Frazier",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      )),
                  Positioned(
                      left: 5.w,
                      top: 6.h,
                      child: const Text(
                        "Cardiology",
                        style: TextStyle(
                          color: AppColors.inActiveColorPrimary,
                          fontFamily: 'Manrope',
                        ),
                      )),
                  Positioned(
                    top: 2.h,
                    right: 5.w,
                    child: CircleAvatar(
                      backgroundColor: AppColors.pictureBackground,
                      radius: 7.w,
                      backgroundImage: const AssetImage(
                        AppImages.femaleDoctor1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w),
              child: const Divider(
                height: 2,
                color: AppColors.cancelButtonColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: const [
                        Icon(Icons.calendar_month_rounded),
                        SizedBox(
                          width: 2,
                        ),
                        Text("12/2/2022"),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: const [
                        Icon(Icons.schedule_outlined),
                        SizedBox(
                          width: 2,
                        ),
                        Text("12:30 PM"),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 15.sp,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text("Confirmed"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: height / 15,
                      decoration: const BoxDecoration(
                        color: AppColors.cancelButtonColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: const Center(
                          child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: height / 15,
                      decoration: const BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: const Center(
                          child: Text(
                        "Reschedule",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
