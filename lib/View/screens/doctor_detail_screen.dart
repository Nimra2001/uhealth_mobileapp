import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uhealth_mobileapp/Controller/home_controller.dart';
import 'package:uhealth_mobileapp/Model/res/app_colors.dart';
import '../../Controller/doctor_detail_controller.dart';
import '../../Model/widgets/doctor_detail_screen_widgets/doctor_picture.dart';
import '../../Model/widgets/doctor_detail_screen_widgets/name_row.dart';
import 'book_appointment_screen.dart';


enum SingingCharacter { lafayette, jefferson }
class DoctorDetailScreen extends GetView<DoctorDetailController> {
  const DoctorDetailScreen({Key? key}) : super(key: key);
  static final DoctorDetailController doctorDetailController =
      Get.put(DoctorDetailController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.0.h, left: 5.w, right: 5.w),
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
                    if (doctorDetailController.isFavorite.value == false) {
                      doctorDetailController.isFavorite.value = true;
                    } else {
                      doctorDetailController.isFavorite.value = false;
                    }
                  },
                  child: Obx(
                    () => CircleAvatar(
                      backgroundColor: AppColors.backGroundColor,
                      radius: 15,
                      child: Icon(
                        doctorDetailController.isFavorite.value == false
                            ? Icons.favorite_outline_sharp
                            : Icons.favorite,
                        color: doctorDetailController.isFavorite.value == false
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
          SizedBox(height: height / 2.75, child: const DoctorPicture()),
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
              left: 6.w,top:1.h,right: 6.w,
            ),
            child: RichText(
              textAlign: TextAlign.justify,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text:
                        'Dr Benedet Smith is a well respected Virologist in our hospital. She always give her best Dr Benedet Smith is a well respected Virologist in our hospital....',
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
            padding: EdgeInsets.only(
              left: 6.w, top: 1.h
            ),
            child: Row(
              children:  [
                const Text(
                  "Reviews",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Manrope',
                  ),
                ),
                SizedBox(width: 4.w,),
                 Icon(Icons.star, color: AppColors.starColor,size: 20.sp,),
                SizedBox(width: 2.w,),
                const Text(
                  "4.2",
                  style:  TextStyle(
                    fontSize: 15,
                    color: AppColors.lightBlackColor,
                    fontFamily: 'Manrope',
                  ),
                ),
              ],
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
          bookAppointment(height / 16, width / 1),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 1.0.h),
              child: Container(
                padding: EdgeInsets.all(1.0.h),
                height: 7.h,
                decoration: const BoxDecoration(
                  color: AppColors.cancelButtonColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Consultation Price",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Manrope',
                      ),
                    ),
                    Text(
                      "\$ 120",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Manrope',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Get.bottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5.0,
                  Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),


                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(top: 0.5.h),
                            child: Center(
                              child: Container(
                                height: 5.0,
                                width: width/2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: AppColors.inActiveColorPrimary,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0, bottom: 24.0),
                            child: Text(
                              'Select Appointment Type',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackColor,
                                fontFamily: 'Manrope',
                              ),
                            ),
                          ),
                          myRadioButton(
                            title: "Checkbox 0",
                            value: 0,
                            onChanged: (newValue){
                            doctorDetailController.groupValue = newValue;
                            }
                          ),
                          myRadioButton(
                            title: "Checkbox 1",
                            value: 1,
                              onChanged: (newValue){
                                doctorDetailController.groupValue = newValue;
                              }
                          ),
                        ],
                      )
                  ),
                  enableDrag: false,
                );
                // Get.to(const BookAppointmentScreen());
              },
              child: Container(
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
            ),
          ],
        ),
      );
  Widget myRadioButton({title,value,onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: doctorDetailController.groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }
}
