import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../View/bottom_bar_screens/bottom_bar.dart';


class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
    await GetStorage.init();
    Future.delayed(const Duration(milliseconds: 500), () async {
      Get.offAll(() =>  BottomBar());
      }
    );
  }
}
