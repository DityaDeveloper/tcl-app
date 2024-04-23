class MasterUri {
  static Baseuri get baseurl => Baseuri();
  static PathAuth get pathAuth => PathAuth();
  static PathHospital get pathHospital => PathHospital();
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
class PathHospital {
  // example url : https://dityadeveloper.github.io/mock/hospital/login.json
  String get menu => "menu.json";
  String get login => "login.json";
  String get verify => "verify.json";
  String get profil => "profile.json";

}
