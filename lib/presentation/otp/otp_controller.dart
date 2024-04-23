import 'package:get/get.dart';

import '../../app/routes/route_name.dart';

class LoginOtpController extends GetxController {

  onToLoginOtpView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.toNamed(RoutesName.loginOtp);
    });
  }
  onToLoginOtpSendView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.toNamed(RoutesName.loginOtpSend);
    });
  }
  onToDashboardView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.toNamed(RoutesName.dashboard);
    });
  }
  
}