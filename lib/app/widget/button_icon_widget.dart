import 'package:flutter/material.dart';

class ButtonIconWidget extends StatelessWidget {
  const ButtonIconWidget({super.key, this.label = "Label", this.width = 100, this.backgroundColor = const Color(0xffF18265), this.textColor = const Color(0xffffffff), this.onlyIcon = false, this.icon = Icons.notifications, this.onpress, this.iconSize = 24, this.padding = 2});
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final bool onlyIcon;
  final IconData icon;
  final double iconSize;
  final double padding;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: backgroundColor),
          onPressed: onpress!,
          child: onlyIcon ? Padding(
            padding: EdgeInsets.all(padding),
            child: Icon(icon, size: iconSize,),
          ) : Text(
            label,
            style: TextStyle(
              color: textColor,
            ),
          )),
    );
  }
}
