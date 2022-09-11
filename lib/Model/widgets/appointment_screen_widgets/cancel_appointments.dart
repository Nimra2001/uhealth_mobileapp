import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Controller/appointment_controller.dart';
import '../../res/app_colors.dart';
import 'cancel_cards.dart';

class CancelAppointments extends StatelessWidget {
  const CancelAppointments({Key? key}) : super(key: key);

  static final AppointmentController appointmentController =
      Get.put(AppointmentController());
  @override
  Widget build(BuildContext context) {
    return appointmentController.cupertinoTabBarIIIValue.value == 2
        ? Padding(
            padding: EdgeInsets.only(left: 2.w, right: 2.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:
                          AppointmentController.upComingDoctorsName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CancelCards(index: index);
                      }),
                ),
              ],
            ),
          )
        : SizedBox();
  }
}
