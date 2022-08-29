import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:uhealth_mobileapp/View/bottom_bar_screens/appointment_screen.dart';
import '../../Controller/persistent_tabbar_controller.dart';
import '../../Model/res/app_colors.dart';
import 'chat_screen.dart';
import 'home_screen.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/tabler.dart';

class BottomBar extends GetView<PersistentTabBarController> {
   BottomBar({Key? key}) : super(key: key);
   final PersistentTabBarController persistentTabBarController = Get.put(PersistentTabBarController());


   List<Widget> _buildScreens() {
     return [
       const HomeScreen(),
       const AppointmentScreen(),
       const ChatScreen(),
     ];
   }
   List<PersistentBottomNavBarItem> _navBarsItems() {
     return [
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.home),
         title: "Home",
         activeColorPrimary: AppColors.activeColorPrimary,
         inactiveColorPrimary: AppColors.inActiveColorPrimary,
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.calendar_month),
         title: ("Appointments"),
         activeColorPrimary: AppColors.activeColorPrimary,
         inactiveColorPrimary: AppColors.inActiveColorPrimary,
         inactiveColorSecondary: AppColors.inActiveColorPrimary,
         routeAndNavigatorSettings: RouteAndNavigatorSettings(
           initialRoute: '/',
           routes: {
             '/second': (context) => const AppointmentScreen(),
             '/third': (context) => const ChatScreen(),
           },
         ),
       ),
       PersistentBottomNavBarItem(
           icon: const Iconify(Tabler.message_circle),
           title: ("Messages"),
           activeColorPrimary: AppColors.activeColorPrimary,
         activeColorSecondary: AppColors.activeColorPrimary,
           inactiveColorPrimary: AppColors.inActiveColorPrimary,
           routeAndNavigatorSettings: RouteAndNavigatorSettings(
             initialRoute: '/',
             routes: {
               '/second': (context) => const AppointmentScreen(),
               '/third': (context) => const ChatScreen(),
             },
           ),
           ),
     ];
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PersistentTabView(
        context,
        controller: persistentTabBarController.controller.value,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
      ),
    );
  }

}