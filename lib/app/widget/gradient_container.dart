import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.child,
      this.beginAlignment = Alignment.centerLeft,
      this.endAlignment = Alignment.bottomRight,
      this.gradientColor = const [Color(0xff6CC5CB), Color(0xff008ABB)],
      this.height = 100,
      this.width = 100,
      this.borderRadius = 10,
      this.isBorderRadius = false});
  final Widget child;
  final Alignment beginAlignment;
  final Alignment endAlignment;
  final List<Color> gradientColor;
  final double width;
  final double height;
  final double borderRadius;
  final bool isBorderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: isBorderRadius
            ? BorderRadius.circular(borderRadius)
            : const BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.zero,
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero,
              ),
        gradient: LinearGradient(
          begin: beginAlignment,
          end: endAlignment,
          colors: gradientColor,
        ),
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
