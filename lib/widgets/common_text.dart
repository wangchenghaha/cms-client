
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontsize;

  const CommonText(this.text ,{Key? key, this.fontsize = 16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontsize,
    ),);
  }
}