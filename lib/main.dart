import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uhealth_mobileapp/View/bottom_bar_screens/chat_screen.dart';
import 'package:uhealth_mobileapp/View/bottom_bar_screens/home_screen.dart';

import 'View/bottom_bar_screens/appointment_screen.dart';
import 'View/splash_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return KeyboardDismisser(
      gestures: const [GestureType.onTap, GestureType.onPanUpdateDownDirection],
      child: ResponsiveSizer(builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          builder: EasyLoading.init(),
          debugShowCheckedModeBanner: false,
          title: 'Health Mobile App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'SourceSansPro',
          ),
          home: SplashScreen(),
          initialRoute: '/',
          routes: {
            '/first': (context) => const HomeScreen(),
            '/second': (context) => const AppointmentScreen(),
            '/third': (context) => const ChatScreen(),
          },
        );
      }),
    );
  }
}
