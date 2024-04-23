

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/widget/container_gradient.dart';
import '../../app/widget/text_gradient.dart';
import '../../gen/assets.gen.dart';
import 'home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 final clogin = Get.put(HomeController());
  bool isIndonesian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            child: Column(
              children: [
                Assets.image.rsudImage.image(width: 300, height: 300),
                ShaderMask(
                  shaderCallback: (size) => linearGradient,
                  child: const Text(
                    'Memberikan pelayanan kesehatan profesional berkualitas yang terjangkau dan dapat diakses semua kalangan.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => clogin.onToLoginView(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: containerGradientTest1,
                  ),
                ),
                GestureDetector(
                  onTap: () => clogin.onToLoginOtpView(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: containerGradientTest2,
                  ),
                ),
                GestureDetector(
                  onTap: () => clogin.onToDashboardView(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: containerGradientTest3,
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
