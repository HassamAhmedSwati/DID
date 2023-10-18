import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                )),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage('assets/image/DID_Logo.png'),
                width: 190,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Verify OTP',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 19,
                    color: Color(0xff111111)),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Please enter the 6 digit code sent to',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto-Regular',
                      color: Color(0xff5F5F5F))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '+92********',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                  ),
                  Text(
                    ' through SMS',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto-Regular',
                        color: Color(0xff5F5F5F)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  keyboardType: TextInputType.number,
                  showCursor: false,
                  pinTheme: PinTheme(
                      activeColor: Color(0xff353535),
                      selectedColor: Color(0xff353535),
                      inactiveColor: Color(0xff353535)),
                  inputFormatters: [
                    FilteringTextInputFormatter
                        .digitsOnly, // Allow only numeric input
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Didn’t receive a code?',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto-Regular',
                          color: Color(0xff7E7E7E))),
                  Text(
                    '  Resend SMS',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: Color(0xffFFC801)),
                  )
                ],
              ),
              SizedBox(
                height: 95,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By continuing you’re indicating that you accept our',
                    style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 12,
                        color: Color(0xff5F5F5F)),
                  ),
                  Text(
                    ' Term',
                    style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Color(0xff5F5F5F)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'of Use',
                    style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Color(0xff5F5F5F)),
                  ),
                  Text(
                    ' and our ',
                    style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 12,
                        color: Color(0xff5F5F5F)),
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Color(0xff5F5F5F)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
