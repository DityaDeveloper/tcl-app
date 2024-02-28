import 'package:get/get.dart';
import 'package:tcl/app/routes/route_name.dart';
import 'package:tcl/presentation/plan_register/plan_register_view.dart';

class RoutesPage {
  static final init = RoutesName.splashScreen;
  // static final init = RoutesName.mainMenu;
  static final routes = [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const PlanRegisterView(),
    ),
    
  ];
    
    }