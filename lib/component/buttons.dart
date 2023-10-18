import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Color bdcolor, bgcolor;
  Color? txcolor;
  VoidCallback? onPress;
  double h, w, h1;
  Button(
      {Key? key,
      required this.text,
      required this.h,
      required this.w,
      required this.h1,
      required this.bdcolor,
      required this.bgcolor,
      this.txcolor,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: h1),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgcolor,
              border: Border.all(color: bdcolor)),
          child: Center(
              child: Text(
            text,
            style:
                TextStyle(fontFamily: 'Roboto-Medium', fontSize: 16, color: txcolor),
          )),
        ),
      ),
    );
  }
}
