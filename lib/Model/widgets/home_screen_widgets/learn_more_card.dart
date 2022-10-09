import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../res/app_colors.dart';
import '../../res/app_images.dart';

class LearnMoreCard extends StatelessWidget {
  const LearnMoreCard({Key? key, required this.height, required this.width})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 4.h,
          right: 1.w,
          left: 1.w,
          bottom: 0,
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                  stops: [
                    0.5,
                    0.7,
                    0.8,
                  ],
                  center: Alignment(0.8, -0.6),
                  focal: Alignment(0.9, -0.5),
                  focalRadius: 2.5,
                  tileMode: TileMode.clamp,
                  colors: [
                    Color(0xFF1579FE),
                    Color(0xFF3A8FFF),
                    Color(0xFF539CFE),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Stack(
              children: [
                 Positioned(
                  top: 2.h,
                  left: 5.w,
                  child: const Text(
                    "Here when you need",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                 Positioned(
                  top: 5.h,
                  left: 5.w,
                  child: const Text(
                    "us most",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                Positioned(
                    top: 10.h,
                    left: 5.w,
                    child: Container(
                      width: 25.w,
                      height: 5.h,
                      decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Center(
                        child: Text(
                          "Learn More",
                          style: TextStyle(
                            color: AppColors.activeColorPrimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 2.w,
          bottom: 0,
          child: SizedBox(
            width: 65.w,
            height: 30.h,
            child: const DecoratedBox(
              decoration: ShapeDecoration(
                color: AppColors.transparentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppImages.doctor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
