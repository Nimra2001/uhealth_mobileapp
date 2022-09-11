import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Controller/appointment_controller.dart';
import '../../../Controller/home_controller.dart';
import '../../res/app_colors.dart';

class CancelCards extends StatelessWidget {
  const CancelCards({Key? key, required this.index}) : super(key: key);
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
        child: Column(children: [
          SizedBox(
            width: width,
            height: height / 7,
            child: Stack(
              children: [
                Positioned(
                  top: 2.h,
                  right: 5.w,
                  child: CircleAvatar(
                    backgroundColor: AppColors.pictureBackground,
                    radius: 26.sp,
                    backgroundImage: AssetImage(
                      HomeController.doctorsImagesList[index],
                    ),
                  ),
                ),
                Positioned(
                    left: 5.w,
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
                  left: 55.w,
                  top: 3.h,
                  child: InkWell(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Reason of Canceling Appointment",
                          middleText:
                              "I regret to inform you that I am unable to come this afternoon. "
                              " I have a family emergency that requires me to be out of town for the rest of the day."
                              " If you're available later this week, I would be happy to reschedule.",
                          backgroundColor: AppColors.backGroundColor,
                          titleStyle:
                              const TextStyle(color: AppColors.whiteColor),
                          middleTextStyle:
                              const TextStyle(color: AppColors.whiteColor),
                          radius: 10);
                    },
                    child: const Icon(
                      Icons.more_vert_sharp,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
                Positioned(
                  left: 5.w,
                  top: 7.h,
                  child: Text(
                    HomeController.specialistName[index],
                    style: const TextStyle(
                      color: AppColors.inActiveColorPrimary,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                Positioned(
                  left: 5.w,
                  top: 9.h,
                  child: Row(
                    children: [
                      RatingBarIndicator(
                        rating: AppointmentController.ratings[index],
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 22.0.sp,
                        direction: Axis.horizontal,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppointmentController.ratings[index].toString(),
                        style: TextStyle(
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: height / 20,
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
                    height: height / 20,
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
    );
  }
}
