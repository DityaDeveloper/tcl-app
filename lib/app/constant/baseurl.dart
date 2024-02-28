class MasterUri {
  static Baseuri get baseurl => Baseuri();
  static PathAuth get pathAuth => PathAuth();
  static PathListTcl get pathListCtl => PathListTcl();
}

class Baseuri {
  String get local => "http://localhost:8080/api/v1/";
  String get dev => "";
}

class PathAuth {
  String get authLogin => "login";
  String get authRegister => "register";
  String get authGetUser => "user";
  String get getToken => "token";
}

class PathListTcl{
   String get registerplan => "registerplan/create";

   String get mTruck => "truck";
   String get mPlan => "plan";
   String get mPo => "po";
   String get partner => "partner";
   String get pengiriman => "pengiriman";
}
