import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/routes/route_name.dart';
import '../../data/datasource/remote/hospital/hospital_datasource.dart';

class LoginController extends GetxController {
  var isLoggedin = false.obs;
  var isLoading = false.obs;
  var isRemember = false.obs;
  var isPasswordVisible = true.obs;
  String token = '';
  var username = TextEditingController().obs;
  var password = TextEditingController().obs;
  var isTime = ''.obs;
  var isLocalTime = ''.obs;
  var isLocalDate = ''.obs;

  var user = ''.obs;

  HospitalDataSource menuDatasource = HospitalDataSource();

  Future<List<dynamic>> getmenulist() async {
    final response = await menuDatasource.getMenuApi();
    print(response);
    final List<dynamic> parsed = response['metadata'];
    return parsed;
  }

  Future<void> onLogin(
      {required String email, required String password}) async {
    print("$email $password");
    if (email == 'hermanto.ditya@gmail.com') {
      final response = await menuDatasource.loginAuth();
      print(response);
      if (response['status'] == false) {
        Get.snackbar('Error', 'email dan password salah');
      } else {
        var username = response['metadata'];
        if (username['username'] == "ditya developer") {
          user.value = username['username'];
          Get.snackbar('Sukses', 'Selamat berhasil masuk');
          onToLoginHomeView();
        } else {
          null;
        }
      }
    }  else {
      Get.snackbar('Error', 'email dan password salah');
      
    }
  }

  onToLoginHomeView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.loginHome);
    });
  }

  onToHome() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.home);
    });
  }

  hidepassword() {
    isPasswordVisible.value
        ? isPasswordVisible.value = false
        : isPasswordVisible.value = true;
  }

  rememberMe() {
    if (isRemember.value == false) {
      isRemember.value = true;
    } else {
      isRemember.value = false;
    }
    //onSavedRememberMe(isRemember.value);
  }
}
