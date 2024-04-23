import 'package:get/get.dart';
import 'package:tcl/app/routes/route_name.dart';

import '../../presentation/dashboard/dashboard_chat.dart';
import '../../presentation/dashboard/dashboard_chat_detail.dart';
import '../../presentation/dashboard/dashboard_view.dart';
import '../../presentation/login/_login_home.dart';
import '../../presentation/login/login_view.dart';
import '../../presentation/home/home_view.dart';
import '../../presentation/otp/otp_login_view.dart';
import '../../presentation/otp/otp_send_view.dart';

class RoutesPage {
  static final init = RoutesName.home;
  // static final init = RoutesName.mainMenu;
  static final routes = [
    GetPage(
      name: RoutesName.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: RoutesName.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: RoutesName.loginHome,
      page: () => const LoginHomeView(),
    ),
    GetPage(
      name: RoutesName.loginOtp,
      page: () => const OtpLoginView(),
    ),
    GetPage(
      name: RoutesName.loginOtpSend,
      page: () => const OtpSendView(),
    ),
    GetPage(
      name: RoutesName.loginOtpSend,
      page: () => const OtpSendView(),
    ),
    GetPage(
      name: RoutesName.dashboard,
      page: () => const DashboardView(),
    ),
    GetPage(
      name: RoutesName.chat,
      page: () => const ChatView(),
    ),
    GetPage(
      name: RoutesName.chatDetail,
      page: () => const ChatDetailView(),
    ),
    
  ];
    
    }