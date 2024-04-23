import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/widget/container_gradient.dart';
import '../../gen/assets.gen.dart';
import 'otp_controller.dart';

class OtpLoginView extends StatefulWidget {
  const OtpLoginView({super.key});

  @override
  State<OtpLoginView> createState() => _OtpLoginViewState();
}

class _OtpLoginViewState extends State<OtpLoginView> {
  final LoginOtpController controller = Get.put(LoginOtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Assets.image.otpCall.image(height: 100),
      ),
      const Padding(
        padding: EdgeInsets.all(16.0),
        child:
            Text('Silahkan masuk dengan nomor handphone kamu yang terdaftar', style: TextStyle(fontSize: 25),),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: TextFormField(
          keyboardType: TextInputType.text,
          onSaved: (String? value) {},
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.phone),
            border: OutlineInputBorder(),
            hintText: 'phone number',
            labelText: 'phone',
          ),
        ),
      ),
      GestureDetector(
        onTap: () => controller.onToLoginOtpSendView(),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: containerGradient4,
        ),
      ),
    ])));
  }
}
