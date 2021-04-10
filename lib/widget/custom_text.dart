import 'package:flutter/material.dart';

abstract class CustomText extends StatefulWidget {
  final String text;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontColor = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        color: widget.fontColor,
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
      ),
    );
  }
}
