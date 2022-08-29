import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uhealth_mobileapp/Model/res/app_colors.dart';
import '../Controller/splash_controller.dart';
import '../Model/res/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.appLogo,
              color: AppColors.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
