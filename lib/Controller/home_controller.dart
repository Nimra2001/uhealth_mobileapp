import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/noto.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:colorful_iconify_flutter/icons/openmoji.dart';
import 'package:iconify_flutter/icons/medical_icon.dart';
import 'package:uhealth_mobileapp/Model/res/app_images.dart';

import '../Model/res/app_colors.dart';



class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();


  RxInt currentIndex = 0.obs;

  static const iconTypes = [
    Iconify(Noto.lungs),
    Iconify(
      Carbon.coronavirus,
      color: AppColors.specialistIconsColor,
    ),
    Iconify(Noto.brain),
    Iconify(
      Fluent.dentist_24_filled,
      color: AppColors.specialistIconsColor,
    ),
    Iconify(
      Openmoji.stomach,
      color: AppColors.specialistIconsColor,
    ),
    Iconify(
      MedicalIcon.dermatology,
      color: AppColors.specialistIconsColor,
    ),
    Iconify(
      MedicalIcon.hearing_assistance,
      color: AppColors.specialistIconsColor,
    ),
    Iconify(
      MedicalIcon.alternative_complementary,
      color: AppColors.specialistIconsColor,
    ),
  ];
  static const specialistName = [
    "Internist",
    "Virologist",
    "Neurologist",
    "Dentist",
    "Gastro",
    "Dermal",
    "ENT",
    "Surgeons",
  ];

  static const doctorsImagesList = [
    AppImages.femaleDoctor1,
    AppImages.maleDoctor3,
    AppImages.femaleDoctor2,
    AppImages.maleDoctor2,
    AppImages.maleDoctor3,
  ];
  static const doctorsName = [
    "Dr Benedet ",
    "Dr Montero",
    "Dr Pegang ",
    "Dr Globe ",
    "Dr Smith ",
  ];
  static const locationList = [
    "3.2 km ",
    "5.7 km",
    "4.7 km",
    "7.7 km",
    "9.7 km",
  ];
}
