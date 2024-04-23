import 'chat_model.dart';


class ChatListModel {
  final List<ChatModel> list;

  ChatListModel({
    required this.list,
  });

  factory ChatListModel.fromJson(List<dynamic> parsedJson) {
    List<ChatModel> list = <ChatModel>[];
    list = parsedJson.map((i) => ChatModel.fromJson(i)).toList();

    return ChatListModel(list: list);
  }
}
