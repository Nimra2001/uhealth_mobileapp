import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uhealth_mobileapp/Model/res/app_colors.dart';
import '../../Controller/doctor_detail_controller.dart';
import '../../Model/widgets/doctor_detail_screen_widgets/doctor_picture.dart';
import '../../Model/widgets/doctor_detail_screen_widgets/name_row.dart';

class DoctorDetailScreen extends GetView<DoctorDetailController> {
  const DoctorDetailScreen({Key? key}) : super(key: key);
  static final DoctorDetailController appointmentController =
      Get.put(DoctorDetailController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.0.h, left: 5.w, right: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColors.backGroundColor,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.whiteColor,
                      size: 18.sp,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (appointmentController.isFavorite.value == false) {
                      appointmentController.isFavorite.value = true;
                    } else {
                      appointmentController.isFavorite.value = false;
                    }
                  },
                  child: Obx(
                    () => CircleAvatar(
                      backgroundColor: AppColors.backGroundColor,
                      radius: 15,
                      child: Icon(
                        appointmentController.isFavorite.value == false
                            ? Icons.favorite_outline_sharp
                            : Icons.favorite,
                        color: appointmentController.isFavorite.value == false
                            ? AppColors.whiteColor
                            : AppColors.redColor,
                        size: 18.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height / 2.5, child: const DoctorPicture()),
          Padding(
            padding: EdgeInsets.only(left: 6.w, right: 5.w),
            child: const NameDetailRow(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.w,
            ),
            child: const Text(
              "About",
              style: TextStyle(
                fontSize: 15,
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.w,
            ),
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text:
                        'Dr Benedet Smith is a well respected Virologist in our hospital. She always give her best....',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: AppColors.inActiveColorPrimary),
                  ),
                  TextSpan(
                    text: 'See More',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColors.activeColorPrimary),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, top: 1.h),
            child: const Text(
              "Education",
              style: TextStyle(
                fontSize: 15,
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, top: 1.h, right: 6.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Virology Care Professional Practice",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.inActiveColorPrimary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Manrope',
                  ),
                ),
                Text(
                  "2020",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.inActiveColorPrimary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Manrope',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, top: 1.h, right: 6.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Internal Medicine; UNC Medical Center",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.inActiveColorPrimary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Manrope',
                  ),
                ),
                Text(
                  "2021",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.inActiveColorPrimary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Manrope',
                  ),
                ),
              ],
            ),
          ),
          mapViewList(height / 16, width / 2),
          bookAppointment(height / 16, width / 2),
        ],
      )),
    );
  }

  Widget mapViewList(height, width) => Padding(
        padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope',
                ),
              ),
              Icon(
                Icons.map_sharp,
                color: AppColors.activeColorPrimary,
              ),
            ]),
      );

  Widget bookAppointment(height, width) => Padding(
        padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 1.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "\$ 120",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: const Center(
                child: Text(
                  "Make an Appointment",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
