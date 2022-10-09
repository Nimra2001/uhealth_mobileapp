import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../Controller/appointment_controller.dart';
import '../../../Controller/home_controller.dart';
import '../../res/app_colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CompletedCards extends StatelessWidget {
  const CompletedCards({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: height / 4.5,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: AppColors.inActiveColorPrimary,
        color: AppColors.whiteColor,
        child: IntrinsicWidth(
          child: Column(children: [
            SizedBox(
              width: width,
              height: height / 7.9,
              child: Stack(
                children: [
                  Positioned(
                    top: 2.h,
                    left: 5.w,
                    child: CircleAvatar(
                      backgroundColor: AppColors.pictureBackground,
                      radius: 10.w,
                      backgroundImage: AssetImage(
                        HomeController.doctorsImagesList[index],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 33.w,
                      top: 3.h,
                      child: Text(
                        AppointmentController.upComingDoctorsName[index],
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Manrope',
                        ),
                      )),
                  Positioned(
                      left: 33.w,
                      top: 6.h,
                      child: Text(
                        HomeController.specialistName[index],
                        style: const TextStyle(
                          color: AppColors.inActiveColorPrimary,
                          fontFamily: 'Manrope',
                        ),
                      )),
                  Positioned(
                    right: 5.w,
                    top: 3.h,
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.more_horiz_sharp),
                    ),
                  ),
                  Positioned(
                    left: 33.w,
                    top: 8.5.h,
                    child: RatingBarIndicator(
                      rating:   AppointmentController.ratings[index],
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: AppColors.starColor,
                      ),
                      itemCount: 5,
                      itemSize: 20.0.sp,
                      direction: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.w, right: 5.w, top: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // padding: EdgeInsets.all(2.w),
                    width: width / 7,
                    height: height / 19,
                    decoration: const BoxDecoration(
                      color: AppColors.cancelButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month_sharp,
                          color: AppColors.blackColor,
                          size: 20.sp,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "2",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Container(
                      height: height / 19,
                      decoration: const BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                        child: Text(
                          "25 Aug,2022",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: 'Manrope',
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Container(
                      height: height / 19,
                      padding: EdgeInsets.all(2.w),
                      decoration: const BoxDecoration(
                        color: AppColors.backGroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                        child: Text(
                          "10:00 - 10:30 AM",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: 'Manrope',
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
