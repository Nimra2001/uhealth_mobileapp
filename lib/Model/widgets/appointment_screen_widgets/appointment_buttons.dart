import 'package:flutter/material.dart';
import 'package:cupertino_tabbar/cupertino_tabbar.dart' as CupertinoTabBar;
import 'package:get/get.dart';
import '../../../Controller/appointment_controller.dart';
import '../../res/app_colors.dart';


class JobButtons extends StatefulWidget {
  const JobButtons({Key? key}) : super(key: key);

  @override
  State<JobButtons> createState() => _JobButtonsState();
}

class _JobButtonsState extends State<JobButtons> {
  static final AppointmentController appointmentController = Get.put(AppointmentController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: 40.0,
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: AppColors.inActiveColorPrimary,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: CupertinoTabBar.CupertinoTabBar(
              Colors.transparent,
              AppColors.mainColor,
              [
                Center(
                  child: Text(
                    "Upcoming",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: appointmentController.cupertinoTabBarIIIValue.value == 0
                          ? Colors.white
                          : AppColors.containerAppointmentTextColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: appointmentController.cupertinoTabBarIIIValue.value == 1
                          ? Colors.white
                          : AppColors.containerAppointmentTextColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Canceled",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: appointmentController.cupertinoTabBarIIIValue.value == 2
                          ? Colors.white
                          : AppColors.containerAppointmentTextColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ],
              appointmentController.cupertinoTabBarIIIValueGetter,
                  (int index) {
                setState(() {
                  appointmentController.cupertinoTabBarIIIValue.value = index;
                });
              },
              useShadow: false,
              allowExpand: true,
              useSeparators: false,
              innerVerticalPadding: 14,
              innerHorizontalPadding: 15,
              outerHorizontalPadding: 15,
              outerVerticalPadding: 12,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
