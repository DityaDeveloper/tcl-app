// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:tcl/data/datasource/remote/authentication/authentication_datasource.dart';
import 'package:tcl/domain/model/po_model/po_model.dart';
import 'package:tcl/domain/model/truck_model/truck_model.dart';
import 'package:tcl/domain/model/user_model/user_model.dart';

import '../../data/datasource/remote/list/list_datasource.dart';
import '../../domain/model/partner_model/partner_list_model.dart';
import '../../domain/model/partner_model/partner_model.dart';
import '../../domain/model/pengiriman_model/partner_list_model.dart';
import '../../domain/model/pengiriman_model/pengiriman_model.dart';
import '../../domain/model/plan_model/plan_list_model.dart';
import '../../domain/model/plan_model/plan_model.dart';
import '../../domain/model/po_model/po_list_model.dart';
import '../../domain/model/truck_model/truck_list_model.dart';
import '../../domain/model/user_model/user_list_model.dart';

class PlanRegisterController extends GetxController {
  AuthenticationDataSource authenticationDataSource =
      AuthenticationDataSource();
  
  ListDatasource listDatasource = ListDatasource();
  
   Future<List<UserModel>> getUserlist() async {
    final response = await authenticationDataSource.getUserdata();
    print(response);
    final List<dynamic> parsed = response['metadata'];
    List<UserModel> responseModelList = UserListModel.fromJson(parsed).list;
    return responseModelList;
  }

   Future<List<TruckModel>> getTrucklist() async {
    final response = await listDatasource.getTruck();
    print(response);
    final List<dynamic> parsed = response['metadata'];
    List<TruckModel> responseModelList = TruckListModel.fromJson(parsed).list;
    return responseModelList;
  }

   Future<List<PlanModel>> getPlanlist() async {
    final response = await listDatasource.getPlan();
    print(response);
    final List<dynamic> parsed = response['metadata'];
    List<PlanModel> responseModelList = PlanListModel.fromJson(parsed).list;
    return responseModelList;
  }
   Future<List<PoModel>> getPolist() async {
    final response = await listDatasource.getPo();
    print(response);
    final List<dynamic> parsed = response['metadata'];
    List<PoModel> responseModelList = PoListModel.fromJson(parsed).list;
    return responseModelList;
  }
   Future<List<PartnerModel>> getPartnerlist() async {
    final response = await listDatasource.getPartner();
    print(response);
    final List<dynamic> parsed = response['metadata'];
    List<PartnerModel> responseModelList = PartnerListModel.fromJson(parsed).list;
    return responseModelList;
  }
   Future<List<PengirimanModel>> getPengirimanlist() async {
    final response = await listDatasource.getPengiriman();
    print(response);
    final List<dynamic> parsed = response['metadata'];
    List<PengirimanModel> responseModelList = PengirimanListModel.fromJson(parsed).list;
    return responseModelList;
  }

  Future<bool?> sendRegisterplan(Map requestBody)async{
    print(requestBody);
    final response = await listDatasource.postRegisterplan(requestBody);
    Get.snackbar('Pemberitahuan', 'Data berhasil tersimpan');
    return false;
  }

}
