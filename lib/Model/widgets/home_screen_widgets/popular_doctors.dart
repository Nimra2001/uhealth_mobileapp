import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uhealth_mobileapp/Model/res/app_colors.dart';
import 'package:uhealth_mobileapp/View/screens/doctor_detail_screen.dart';

import '../../../Controller/home_controller.dart';
import '../../../config/constants.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({Key? key}) : super(key: key);
  static HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 5.15,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: HomeController.doctorsImagesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              homeController.currentIndex.value = index;
              K.doctorName.value = HomeController.doctorsName[index];
              K.doctorSpeciality.value = HomeController.specialistName[index];
              K.doctorPicture.value = HomeController.doctorsImagesList[index];
              Get.to(const DoctorDetailScreen());
            },
            child: Padding(
              padding: EdgeInsets.only(left: 1.w, right: 2.w),
              child: Column(children: [
                SizedBox(
                  width: width / 2.7,
                  height: height / 5.5,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: AppColors.doctorImageBackgroundColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          width: width,
                          height: height / 9,
                          child: Image.asset(
                            HomeController.doctorsImagesList[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 2.0.w),
                                child: Text(
                                  HomeController.doctorsName[index],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: AppColors.lightBlackColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Manrope',
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: AppColors.mainColor,
                                    size: 20.sp,
                                  ),
                                  Text(
                                    HomeController.locationList[index],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
