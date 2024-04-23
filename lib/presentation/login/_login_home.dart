// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../gen/assets.gen.dart';
import 'login_controller.dart';

class LoginHomeView extends StatefulWidget {
  const LoginHomeView({super.key});

  @override
  State<LoginHomeView> createState() => _LoginHomeViewState();
}

class _LoginHomeViewState extends State<LoginHomeView> {
  final List<Widget> imageSliders = [
    Assets.image.rsudImage.image(height: Get.height, width: Get.width * 0.8),
    Assets.image.kamarOperasi.image(height: Get.height, width: Get.width * 0.8),
    Assets.image.radiologiRSUDPIJAY.image(height: Get.height, width: Get.width * 0.8),
    Assets.image.rsudImage.image(height: Get.height, width: Get.width * 0.8),
  ];


  final LoginController controller = Get.put(LoginController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(controller.user.value),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                controller.onToHome();
              },
            ),
           
          ],
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
              width: Get.width,
              height: 300,
              child: CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      pauseAutoPlayInFiniteScroll: true,
                      initialPage: 1,
                      autoPlay: true,
                      scrollPhysics: const BouncingScrollPhysics()),
                  items:imageSliders),
            ),
          ),
        ],
      )),
    );
  }
}
