import 'pengiriman_model.dart';


class PengirimanListModel {
  final List<PengirimanModel> list;

  PengirimanListModel({
    required this.list,
  });

  factory PengirimanListModel.fromJson(List<dynamic> parsedJson) {
    List<PengirimanModel> list = <PengirimanModel>[];
    list = parsedJson.map((i) => PengirimanModel.fromJson(i)).toList();

    return PengirimanListModel(list: list);
  }
}
