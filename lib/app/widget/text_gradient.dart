import 'package:flutter/material.dart';
import 'package:get/get.dart';

final Shader linearGradient = const LinearGradient(
  colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
).createShader( Rect.fromLTWH(0.0, 0.0, Get.size.width, Get.size.height + 24));