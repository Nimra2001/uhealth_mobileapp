import 'package:get/get.dart';

class AppointmentController extends GetxController {
  RxInt cupertinoTabBarIIIValue = 0.obs;
  int cupertinoTabBarIIIValueGetter() => cupertinoTabBarIIIValue.value;
  RxInt currentIndex = 0.obs;
  static const upComingDoctorsName = [
    "Dr. Benedet Globe",
    "Dr. Montero Globe",
    "Dr. Pegang Globe",
    "Dr. Globe Smith",
    "Dr. Smith Globe",
  ];
  static const upComingTimes = [
    "10:00 AM ",
    "12:00 AM",
    "01:00 PM ",
    "09:00 AM ",
    "03:00 PM ",
  ];
  static const upComingDates = [
    "16/7/2022 ",
    "17/5/2022",
    "21/5/2022",
    "19/6/2022",
    "10/9/2022",
  ];
  static const ratings = [2.0, 5.0, 4.3, 3.7, 2.9];
}
