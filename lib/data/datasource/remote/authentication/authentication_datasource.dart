// ignore_for_file: avoid_print

import 'package:tcl/app/constant/baseurl.dart';
import 'package:tcl/app/helper/api_client/api_client_helper.dart';

class AuthenticationDataSource {
  Future<dynamic> loginUser(Map requestBody) async {
    String pathUrl = MasterUri.pathAuth.authLogin;
    print("path running on : $pathUrl");
    return ApiClient()
        .post(pathUrl: pathUrl, requestBody: requestBody, token: '');
  }
  Future<dynamic> registerUser(Map requestBody) async {
    String pathUrl = MasterUri.pathAuth.authRegister;
    print("path running on : $pathUrl");
    return ApiClient()
        .post(pathUrl: pathUrl, requestBody: requestBody, token: '');
  }

  Future<dynamic> getUserdata() async {
    String pathUrl = MasterUri.pathAuth.authGetUser;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
}