import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../res/app_colors.dart';
import '../../res/app_images.dart';

class DoctorPicture extends StatelessWidget {
  const DoctorPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: CircleAvatar(
        backgroundColor: AppColors.pictureBackground,
        radius: 45.w,
        backgroundImage: const AssetImage(
          AppImages.femaleDoctor1,
        ),
      ),
    );
  }
}
