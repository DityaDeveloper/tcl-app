import 'package:get/get.dart';

import '../../app/routes/route_name.dart';

class HomeController extends GetxController{

  onToHomeView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.home);
    });
  }
  onToLoginView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.login);
    });
  }
  onToLoginOtpView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.loginOtp);
    });
  }
  onToDashboardView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.dashboard);
    });
  }

}