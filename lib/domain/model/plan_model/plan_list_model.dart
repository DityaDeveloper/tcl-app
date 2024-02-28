import 'plan_model.dart';


class PlanListModel {
  final List<PlanModel> list;

  PlanListModel({
    required this.list,
  });

  factory PlanListModel.fromJson(List<dynamic> parsedJson) {
    List<PlanModel> list = <PlanModel>[];
    list = parsedJson.map((i) => PlanModel.fromJson(i)).toList();

    return PlanListModel(list: list);
  }
}
