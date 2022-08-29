import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Controller/appointment_controller.dart';
import '../../res/app_colors.dart';

class UpComingAppointments extends StatelessWidget {
  const UpComingAppointments({Key? key}) : super(key: key);
  static final AppointmentController appointmentController =
      Get.put(AppointmentController());
  @override
  Widget build(BuildContext context) {
    return appointmentController.cupertinoTabBarIIIValue.value == 0
        ? Padding(
      padding: EdgeInsets.only(left: 2.w, right: 2.w),
          child: Column(
      children: const [
          Text("Nearest Visit",style: TextStyle(
            fontSize:15,
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Manrope',
          ),),

      ],
    ),
        )
        : SizedBox();
  }
}
