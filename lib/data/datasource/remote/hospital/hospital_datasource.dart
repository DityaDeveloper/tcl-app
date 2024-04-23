import '../../../../app/constant/baseurl.dart';
import '../../../../app/helper/api_client/api_client_helper.dart';

class HospitalDataSource {
  
  Future<dynamic> loginAuth() async {
    String pathUrl = MasterUri.pathHospital.login;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
  Future<dynamic> getMenuApi() async {
    String pathUrl = MasterUri.pathHospital.menu;
    print("path running on : $pathUrl");
    return ApiClient()
        .get(pathUrl: pathUrl, token: '');
  }
}