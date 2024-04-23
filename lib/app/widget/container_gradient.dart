import 'package:flutter/material.dart';
import 'package:get/get.dart';

final Widget containerGradient1 = Container(
  width: 280,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.yellowAccent,
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
      ),
    ),
    alignment: Alignment.center,
    child: const Text(
      'Continue as a Guest',
      style: TextStyle(fontSize: 24, color: Colors.white),
    ),
  ),
);

final Widget containerGradientTest1 = Container(
  width: 280,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
    ),
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    alignment: Alignment.center,
    child: const Text(
      'Test - 1',
      style: TextStyle(fontSize: 24, color: Colors.redAccent),
    ),
  ),
);
final Widget containerGradientTest2 = Container(
  width: 280,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
    ),
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    alignment: Alignment.center,
    child: const Text(
      'Test - 2',
      style: TextStyle(fontSize: 24, color: Colors.redAccent),
    ),
  ),
);
final Widget containerGradientTest3 = Container(
  width: 280,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
    ),
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    alignment: Alignment.center,
    child: const Text(
      'Test - 3',
      style: TextStyle(fontSize: 24, color: Colors.redAccent),
    ),
  ),
);

final Widget containerGradient3 = Container(
  width: Get.width,
  height: 200,
  alignment: Alignment.center,
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.zero,
      topRight: Radius.zero,
      bottomLeft: Radius.circular(45.0),
      bottomRight: Radius.circular(45.0),
    ),
  ),
  child: Container(
    width: Get.width,
    height: 200,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.zero,
        topRight: Radius.zero,
        bottomLeft: Radius.circular(45.0),
        bottomRight: Radius.circular(45.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[    Color.fromARGB(255, 95, 254, 135),
                                  Color.fromARGB(255, 25, 224, 108),
                                  Color.fromARGB(255, 66, 252, 147)],
      ),
    ),
    alignment: Alignment.center,
  ),
);

final Widget containerGradient4 = Container(
  width: 100,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.transparent,
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Color.fromARGB(255, 60, 235, 101), Color.fromARGB(255, 65, 250, 133)],
      ),
    ),
    alignment: Alignment.center,
    child: const Text(
      'Selanjutnya',
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
  ),
);
final Widget containerGradient5 = Container(
  width: 100,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.transparent,
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Color.fromARGB(255, 60, 235, 101), Color.fromARGB(255, 65, 250, 133)],
      ),
    ),
    alignment: Alignment.center,
    child: const Text(
      'Konfirmasi',
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
  ),
);