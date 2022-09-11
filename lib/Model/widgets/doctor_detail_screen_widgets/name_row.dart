import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../config/constants.dart';
import '../../res/app_colors.dart';

class NameDetailRow extends StatelessWidget {
  const NameDetailRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 11,
      width: width,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.0.h,
            ),
            child: Obx(
              () => Text(
                K.doctorName.value,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.lightBlackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
          ),
          Positioned(
            top: 5.h,
            child: Padding(
              padding: EdgeInsets.only(
                top: 1.0.h,
              ),
              child: Obx(
                () => Text(
                  K.doctorSpeciality.value,
                  style: const TextStyle(
                    fontSize: 15,
                    color: AppColors.inActiveColorPrimary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 3.h,
            right: 1.w,
            child: Container(
              padding: EdgeInsets.all(1.0.w),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                border: Border.all(color: AppColors.inActiveColorPrimary),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              child: const Icon(
                Icons.chat,
                color: AppColors.activeColorPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
