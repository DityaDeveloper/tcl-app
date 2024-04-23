import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tcl/domain/model/chat_model/chat_model.dart';

import '../../gen/assets.gen.dart';
import 'dashboard_controller.dart';

class ChatDetailView extends StatelessWidget {
  const ChatDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());

    List<ChatModel> messages = const [
      ChatModel(messageContent: "Hello, Ditya", messageType: "receiver"),
      ChatModel(messageContent: "How have you been?", messageType: "receiver"),
      ChatModel(
          messageContent: "Hey nadia, I am doing fine. wbu?",
          messageType: "sender"),
      ChatModel(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
      ChatModel(
          messageContent: "Is there any thing wrong?", messageType: "sender"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  controller.onToNotifChat();
                },
                child: const Icon(Icons.arrow_back)),
            const Text('Dr. Nadia A Wulansari'),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: Get.width,
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: (messages[index].messageType == "receiver"
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (messages[index].messageType == "receiver"
                      ? Colors.grey.shade200
                      : Colors.green[200]),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     if(messages[index].messageType != "receiver")
                    const SizedBox(width: 10,),
                    Row(
                     
                      children: [
                         if(messages[index].messageType == "receiver")
                        CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Assets.image.iconUser.image(width: 45, height: 45)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            messages[index].messageContent,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                         if(messages[index].messageType != "receiver")
                        CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Assets.image.iconUser.image(width: 45, height: 45)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
