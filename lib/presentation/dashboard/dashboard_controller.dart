import 'package:get/get.dart';

import '../../app/routes/route_name.dart';

class DashboardController extends GetxController{

 onToNotifChat() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.toNamed(RoutesName.chat);
    });
  }
 onToNotifChatDetail() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.toNamed(RoutesName.chatDetail);
    });
  }

   onToDashboardView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.dashboard);
    });
  }

   onToHomeView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.home);
    });
  }


}