import 'po_model.dart';


class PoListModel {
  final List<PoModel> list;

  PoListModel({
    required this.list,
  });

  factory PoListModel.fromJson(List<dynamic> parsedJson) {
    List<PoModel> list = <PoModel>[];
    list = parsedJson.map((i) => PoModel.fromJson(i)).toList();

    return PoListModel(list: list);
  }
}
