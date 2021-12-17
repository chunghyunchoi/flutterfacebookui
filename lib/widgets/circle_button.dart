import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final double iconSize;
  final IconData icon;
  final Function onPressed;

  const CircleButton(
      {Key key,
      @required this.icon,
      @required this.iconSize,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0), // 주변 공간 빈 여백
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ), // 동그란 회색 공간
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
      ), // 돋보기
    );
  }
}
