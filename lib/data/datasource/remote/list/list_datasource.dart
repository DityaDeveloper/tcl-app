// ignore_for_file: avoid_print

import 'package:tcl/app/helper/api_client/api_client_helper.dart';

import '../../../../app/constant/baseurl.dart';

class ListDatasource {
  
  Future<dynamic> postRegisterplan(Map requestBody) async {
    String pathUrl = MasterUri.pathListCtl.registerplan;
    print("path running on : $pathUrl");
    return ApiClient()
        .post(pathUrl: pathUrl, token: '', requestBody: requestBody);
  }
  Future<dynamic> getTruck() async {
    String pathUrl = MasterUri.pathListCtl.mTruck;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
  Future<dynamic> getPlan() async {
    String pathUrl = MasterUri.pathListCtl.mPlan;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
  Future<dynamic> getPo() async {
    String pathUrl = MasterUri.pathListCtl.mPo;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
  Future<dynamic> getPartner() async {
    String pathUrl = MasterUri.pathListCtl.partner;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
  Future<dynamic> getPengiriman() async {
    String pathUrl = MasterUri.pathListCtl.pengiriman;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
}