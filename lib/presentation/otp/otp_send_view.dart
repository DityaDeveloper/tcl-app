import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../app/widget/container_gradient.dart';
import '../../gen/assets.gen.dart';
import 'otp_controller.dart';

class OtpSendView extends StatefulWidget {
  const OtpSendView({super.key});

  @override
  State<OtpSendView> createState() => _OtpSendViewState();
}

class _OtpSendViewState extends State<OtpSendView> {
  final LoginOtpController controller = Get.put(LoginOtpController());

  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  void dispose() {
    //_timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Assets.image.otpSend.image(height: 100),
      ),
      const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Masukan 6 code yang telah diterima via sms',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      OtpTextField(
        numberOfFields: 6,
        borderColor: const Color(0xFF512DA8),
        showFieldAsBox: true,
        onCodeChanged: (String code) {},
        onSubmit: (String verificationCode) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
                );
              });
        },
      ),
      const SizedBox(height: 10,),
      Center(child: Text(timerText)),
      const SizedBox(height: 100,),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
          Text('Salah nomor handphone ?'),
          SizedBox(width: 5,),
          Text('Ubah nomor handphone', style: TextStyle(color: Colors.red),),
        ],),
      ),
      GestureDetector(
        onTap: () => controller.onToDashboardView(),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: containerGradient4,
        ),
      ),
    ])));
  }
}
