import 'package:flutter/material.dart';

class CommonFloatingButton extends StatelessWidget {
  final String title;
  final backgroundColor;
  final fontColor;
  final Function onTap;

  const CommonFloatingButton(this.title, this.backgroundColor, this.fontColor,this.onTap, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        if (onTap != null) {onTap()}
      },
      child: Container(
        height: 40.0,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: fontColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
