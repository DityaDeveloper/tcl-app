import 'package:flutter/material.dart';

class BorderContainerWidget extends StatelessWidget {
  const BorderContainerWidget({
    super.key,
    this.width = 100,
    this.height = 100,
    this.isShadow = false,
    required this.child,
    this.borderColor = Colors.black,
    this.isgradient = false,
    this.beginAlignment = Alignment.topLeft,
    this.endAlignment = Alignment.bottomRight,
    this.gradientColor = const [Color(0xff6CC5CB), Color(0xff008ABB)],
    this.color = Colors.grey
  });
  final double width;
  final double height;
  final bool isgradient;
  final Alignment beginAlignment;
  final Alignment endAlignment;
  final List<Color> gradientColor;
  final Widget child;
  final Color borderColor;
  final Color color;
  final bool isShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width + 2,
      height: height + 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: borderColor,
      ),
      child: Container(
        width: width,
        height: height,
        decoration: isgradient
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: beginAlignment,
                  end: endAlignment,
                  colors: gradientColor,
                ),
                boxShadow: isShadow
                    ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 0,
                          offset: const Offset(4, 4),
                        ),
                      ]
                    : [
                        const BoxShadow(),
                      ],
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 1,
                      blurRadius: 0,
                      offset: const Offset(4, 4),
                    ),
                  ]),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
