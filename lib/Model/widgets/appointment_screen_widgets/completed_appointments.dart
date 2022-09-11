import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uhealth_mobileapp/Model/widgets/appointment_screen_widgets/completed_cards.dart';

import '../../../Controller/appointment_controller.dart';
import '../../res/app_colors.dart';

class CompletedAppointments extends StatelessWidget {
  const CompletedAppointments({Key? key}) : super(key: key);

  static final AppointmentController appointmentController =
      Get.put(AppointmentController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return appointmentController.cupertinoTabBarIIIValue.value == 1
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
                        return CompletedCards(index: index);
                      }),
                ),
              ],
            ),
          )
        : SizedBox();
  }
}
