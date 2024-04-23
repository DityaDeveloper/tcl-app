import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/widget/container_gradient.dart';
import '../../gen/assets.gen.dart';
import 'dashboard_controller.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {

     
   final controller = Get.put(DashboardController());
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        containerGradient3,
        ListView(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, right: 24.0, top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      controller.onToDashboardView();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                SizedBox(
                    width: 35,
                    height: 35,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Assets.image.iconNotification
                          .image(width: 30, height: 30),
                    )),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              height: Get.height,
              margin: const EdgeInsets.only(top: 6.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                
                  appBar: AppBar(
                     backgroundColor: Colors.white,
                    bottom: const TabBar(
                      dividerColor: Colors.greenAccent,
                      labelColor: Colors.grey,
                     indicatorWeight: 10,
                     indicatorColor: Colors.greenAccent,
                      tabs: [
                        Tab(child: Text('Chat'),),
                        Tab(child: Text('Notifikasi')),
                      ],
                    ),
                  ),
                  body:  TabBarView(
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.onToNotifChatDetail();
                        },
                        child: const Card(child: ListTile(
                          leading: CircleAvatar(radius: 20,),title: Text("Dr. Nadia A Wulansari" ),
                          subtitle: Text("Spesialist penyakit dalam"),
                          trailing: Icon(Icons.chat_bubble),
                        ),),
                      ),
                     const Icon(Icons.directions_transit, size: 350),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
