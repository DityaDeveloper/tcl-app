import 'truck_model.dart';


class TruckListModel {
  final List<TruckModel> list;

  TruckListModel({
    required this.list,
  });

  factory TruckListModel.fromJson(List<dynamic> parsedJson) {
    List<TruckModel> list = <TruckModel>[];
    list = parsedJson.map((i) => TruckModel.fromJson(i)).toList();

    return TruckListModel(list: list);
  }
}
