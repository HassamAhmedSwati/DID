import 'package:flutter/material.dart';

class FormFieldText extends StatelessWidget {
  String text;
  Widget? icon;
  bool flag;
  double h, w;
  FormFieldText(
      {Key? key,
      required this.h,
      required this.w,
      required this.text,
      this.flag = false,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      child: TextField(
        style: TextStyle(fontFamily: 'Roboto-Regular',decoration:TextDecoration.none,),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          labelText: text,
          hintText: text,
          hintStyle: TextStyle(
            color: Color(0xff5F5F5F),
            fontSize: 14,
            fontFamily: 'Roboto-Medium',
          ),
          labelStyle: TextStyle(
            color: Color(0xff5F5F5F),
            fontSize: 14,
            fontFamily: 'Roboto-Medium',
          ),
          suffixIcon: icon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xff666666)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xff666666)),
          ),
          border: InputBorder.none,
        ),
        cursorColor: Colors.grey,
        obscureText: flag,
      ),
    );
  }
}
