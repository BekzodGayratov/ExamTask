import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextOverflow? overflow;

  const MyText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.color,
      required this.fontWeight,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          overflow: overflow ?? TextOverflow.ellipsis),
    );
  }
}
