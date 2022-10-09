import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uhealth_mobileapp/Controller/home_controller.dart';
import 'package:uhealth_mobileapp/Model/res/app_colors.dart';
import 'package:uhealth_mobileapp/View/screens/more_doctors.dart';
import '../../Model/widgets/home_screen_widgets/learn_more_card.dart';
import '../../Model/widgets/home_screen_widgets/name_image_row.dart';
import '../../Model/widgets/home_screen_widgets/popular_doctors.dart';
import '../../Model/widgets/home_screen_widgets/specialist_row.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  static HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: height / 14,
          backgroundColor: AppColors.mainColor,
          title: const Text(
            "UHEALTH",
            style: TextStyle(
          fontSize: 18,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Manrope',
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 13,
              child: NamePicRow(
                width: width / 8,
                height: height / 16,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w),
              child: SizedBox(
                height: height / 4.5,
                child: LearnMoreCard(
                  height: height / 4,
                  width: width,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 4.w, right: 4.w),
              child: Material(
                elevation: 2,
                shadowColor: AppColors.inActiveColorPrimary,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  width: width,
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    controller: homeController.searchController,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 16.0, top: 15),
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.inActiveColorPrimary,
                      ),
                      suffixIcon: Icon(
                        Icons.filter_list_sharp,
                      ),
                      hintText: 'Search here',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 4.w,
                left: 4.w,
              ),
              child: const Text(
                "Our Specialist",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.lightBlackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h, left: 4.w, right: 4.w),
              child: const SpecialistRow(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    "Popular Doctors",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.lightBlackColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(SeeMoreDoctors());
                    },
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.backGroundColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Manrope',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 4.w),
              child: const PopularDoctors(),
            ),
          ],
        ),
      ),
    );
  }
}
