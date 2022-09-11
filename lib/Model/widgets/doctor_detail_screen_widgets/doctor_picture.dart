import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../config/constants.dart';
import '../../res/app_colors.dart';
import '../../res/app_images.dart';

class DoctorPicture extends StatelessWidget {
  const DoctorPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Obx(
        ()=>CircleAvatar(
          backgroundColor: AppColors.pictureBackground,
          radius: 40.w,
          backgroundImage:  AssetImage(
            K.doctorPicture.value,
          ),
        ),
      ),
    );
  }
}
