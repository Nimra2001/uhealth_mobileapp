import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../Controller/home_controller.dart';
import '../../res/app_colors.dart';

class SpecialistRow extends StatelessWidget {
  const SpecialistRow({Key? key}) : super(key: key);
  static HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 2,
      shadowColor: AppColors.inActiveColorPrimary,
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: height / 7,
            child: ListView.builder(
              itemCount: HomeController.iconTypes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    homeController.currentIndex.value = index;
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.w, right: 2.w, top: 1.h,bottom: 1.h),
                    child: Obx(
                      () => Container(
                        width: width / 4,
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: homeController.currentIndex.value == index
                              ? AppColors.mainColor
                              : AppColors.whiteColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(2.w),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        homeController.currentIndex.value ==
                                                index
                                            ? AppColors.transparentColor
                                            : AppColors.inActiveColorPrimary),
                                color: AppColors.whiteColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100.0)),
                              ),
                              child: HomeController.iconTypes[index],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            SizedBox(
                              width: 18.w,
                              child: Center(
                                child: Text(
                                  HomeController.specialistName[index],
                                  maxLines: 1,
                                  style: TextStyle(
                                    color:
                                        homeController.currentIndex.value ==
                                                index
                                            ? AppColors.whiteColor
                                            : AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
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
    );
  }
}
