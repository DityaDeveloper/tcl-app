import 'partner_model.dart';


class PartnerListModel {
  final List<PartnerModel> list;

  PartnerListModel({
    required this.list,
  });

  factory PartnerListModel.fromJson(List<dynamic> parsedJson) {
    List<PartnerModel> list = <PartnerModel>[];
    list = parsedJson.map((i) => PartnerModel.fromJson(i)).toList();

    return PartnerListModel(list: list);
  }
}
