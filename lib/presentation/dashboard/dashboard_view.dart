import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/widget/container_gradient.dart';
import '../../gen/assets.gen.dart';
import 'dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {


  final _pageController = PageController(initialPage: 1);

  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 1);

  int maxCount = 3;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      Page1(
        controller: (_controller),
      ),
      const Page2(),
      const Page3(),

    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Colors.grey,
              showLabel: true,

              notchColor: Colors.green,

              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 300,

              itemLabelStyle: const TextStyle(fontSize: 10),

              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.greenAccent,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'home',
                ),
                BottomBarItem(
                 inActiveItem: Icon(
                    Icons.graphic_eq,
                    color: Colors.greenAccent,
                  ),
                  activeItem: Icon(
                    Icons.graphic_eq,
                    color: Colors.white,
                  ),
                  itemLabel: 'Dashboard',
                ),
                BottomBarItem(
                 inActiveItem: Icon(
                    Icons.settings,
                    color: Colors.greenAccent,
                  ),
                  activeItem: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  itemLabel: 'Kembali',
                ),
               
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              // kIconSize: 24.0,
            )
          : null,
    );
  }
}

class Page1 extends StatelessWidget {
  final NotchBottomBarController? controller;

  const Page1({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        /// adding GestureDetector
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            controller?.jumpTo(2);
          },
          child: const Text('Home'),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   final controller = Get.put(DashboardController());

    final List<String> dataitem = [
      'Konsultasi Dokter',
      'Poli klinik',
      'Medical check up',
      'Farmasi',
      'Laboratorium',
      'Promo bulan ini',
      'Dokter Kami',
      'Location',
      'Hubungi Kami',
    ];
    return Stack(
      children: [
        containerGradient3,
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 30.0, bottom: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Assets.image.iconUser
                              .image(width: 45, height: 45)),
                      SizedBox(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Good Morning,",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text("Good Guest",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.onToNotifChat();
                    },
                    child: SizedBox(
                        width: 35,
                        height: 35,
                       
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Assets.image.iconNotification
                              .image(width: 30, height: 30),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 20.0),
              child: Container(
                width: 100,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 0,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0,
                      childAspectRatio: 2.5),
                  padding: const EdgeInsets.all(8.0),
                  itemCount: dataitem.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.greenAccent.shade200,
                        ),
                        Text(
                          dataitem[index],
                          style: const TextStyle(
                              fontSize: 18.0, color: Colors.black),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       final controller = Get.put(DashboardController());
    return Container(
        color: Colors.blueAccent, child:  Center(child: IconButton(onPressed: (){
          controller.onToHomeView();

        }, icon: const Icon(Icons.arrow_back))));
  }
}

