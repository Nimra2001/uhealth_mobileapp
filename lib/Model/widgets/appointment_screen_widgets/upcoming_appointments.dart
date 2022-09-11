import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uhealth_mobileapp/Model/widgets/appointment_screen_widgets/upcoming_cards.dart';

import '../../../Controller/appointment_controller.dart';
import '../../../Controller/home_controller.dart';
import '../../res/app_colors.dart';
import '../../res/app_images.dart';

class UpComingAppointments extends StatelessWidget {
  const UpComingAppointments({Key? key}) : super(key: key);
  static final AppointmentController appointmentController =
      Get.put(AppointmentController());
  static HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return appointmentController.cupertinoTabBarIIIValue.value == 0
        ? Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.0.w),
                  child: const Text(
                    "Nearest Visit",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                const UpcomingCards(),
                Padding(
                  padding: EdgeInsets.only(left: 1.0.w, top: 2.h),
                  child: const Text(
                    "Future Visit",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AppointmentController.upComingDoctorsName.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          appointmentController.currentIndex.value = index;
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 1.w, right: 2.w, top: 1.h, bottom: 1.h),
                          child: SizedBox(
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
                                            child: Text(
                                              AppointmentController
                                                  .upComingDoctorsName[index],
                                              style: const TextStyle(
                                                fontSize: 18,
                                                color: AppColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Manrope',
                                              ),
                                            )),
                                        Positioned(
                                            left: 5.w,
                                            top: 6.h,
                                            child:  Text(
                                             HomeController.specialistName[index],
                                              style: const TextStyle(
                                                color: AppColors
                                                    .inActiveColorPrimary,
                                                fontFamily: 'Manrope',
                                              ),
                                            )),
                                        Positioned(
                                          top: 2.h,
                                          right: 5.w,
                                          child: CircleAvatar(
                                            backgroundColor:
                                                AppColors.pictureBackground,
                                            radius: 7.w,
                                            backgroundImage:  AssetImage(
                                              HomeController.doctorsImagesList[index],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 5.w, right: 5.w),
                                    child: const Divider(
                                      height: 2,
                                      color: AppColors.cancelButtonColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 5.w, right: 5.w, top: 1.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: Row(
                                            children:  [
                                              const Icon(Icons.calendar_month_rounded),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              Text(AppointmentController.upComingDates[index]),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          child: Row(
                                            children: [
                                              const Icon(Icons.schedule_outlined),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              Text(AppointmentController
                                                  .upComingTimes[index]),
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
                                    padding: EdgeInsets.only(
                                        left: 5.w, right: 5.w, top: 1.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: height / 15,
                                            decoration: const BoxDecoration(
                                              color: AppColors.cancelButtonColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
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
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
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
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        : const SizedBox();
  }
}
