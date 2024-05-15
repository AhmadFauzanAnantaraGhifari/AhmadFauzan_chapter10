import 'package:flutter_application_miniproject/app/modules/login/views/login_view.dart';
import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(
        () => LoginView(),
        transition: Transition.fade,
        duration: Duration(seconds: 5),
      );
    });
  }
}
