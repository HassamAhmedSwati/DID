import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Share Your QR',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto-Bold'),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            height: 190,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.fromBorderSide(
                    BorderSide(color: Colors.black))),
            child: Image(image: AssetImage('assets/image/qrcode.png'))),
        SizedBox(
          height: 35,
        ),
        Container(
          height: 25,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffFAC401),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Share',
                style: TextStyle(
                    fontFamily: 'Roboto-Medium',
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.share_outlined,
                size: 15,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(height: 30,),
        Text(
          'Your QR Code is private. If you share it with\nsomeone, they can scan it with their\nDiDconnect camera to add you as connection',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto-Medium',
            fontSize: 14,
            color: Color(0xff5F5F5F),
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
