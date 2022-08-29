import 'package:flutter/material.dart';
import 'package:uhealth_mobileapp/Model/res/app_images.dart';
import '../../res/app_colors.dart';

class NamePicRow extends StatelessWidget {
  const NamePicRow({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
            top: 10,
            left: 20,
            child: Text(
              "Stay Healthy!",
              style: TextStyle(color: AppColors.inActiveColorPrimary),
            )),
        const Positioned(
            top: 30,
            left: 20,
            child: Text(
              "Ricardo Milos",
              style: TextStyle(
                fontSize: 18,
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            )),
        Positioned(
          top:10,
          right: 20,
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              color: AppColors.backGroundColor,
              image: DecorationImage(
                image: ExactAssetImage(AppImages.person),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
