import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uhealth_mobileapp/Model/widgets/appointment_screen_widgets/cancel_appointments.dart';
import 'package:uhealth_mobileapp/Model/widgets/appointment_screen_widgets/completed_appointments.dart';
import 'package:uhealth_mobileapp/Model/widgets/appointment_screen_widgets/upcoming_appointments.dart';
import '../../Controller/appointment_controller.dart';
import '../../Model/res/app_colors.dart';
import '../../Model/widgets/appointment_screen_widgets/appointment_buttons.dart';

class AppointmentScreen extends GetView<AppointmentController> {
  const AppointmentScreen({Key? key}) : super(key: key);
static final AppointmentController appointmentController = Get.put(AppointmentController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: height / 14,
          backgroundColor: AppColors.mainColor,
          title: const Center(
            child:  Text(
              "Appointments",
              style: TextStyle(
                fontSize: 18,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              const JobButtons(),
              const SizedBox(height: 24.0),
              Obx(
                    () => appointmentController.cupertinoTabBarIIIValue.value == 0
                    ? const UpComingAppointments()
                    : appointmentController.cupertinoTabBarIIIValue.value == 1 ? const CompletedAppointments() : const CancelAppointments(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
