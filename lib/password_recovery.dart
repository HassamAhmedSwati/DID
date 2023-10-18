import 'package:digital_agency/component/buttons.dart';
import 'package:digital_agency/component/textfield.dart';
import 'package:digital_agency/otp_screen.dart';
import 'package:digital_agency/otp_verification.dart';
import 'package:flutter/material.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
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
                  color: Color(0xff111111),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Image(
                image: AssetImage('assets/image/DID_Logo.png'),
                width: 190,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(fontSize: 18, fontFamily: 'Roboto-Medium'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We'll send 6 digit OTP to your registered\nemail & phone number",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto_Regular',
                    color: Color(0xff5F5F5F)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: FormFieldText(h: 44, w: 296, text: 'Enter Email/Phone'),
              ),
              SizedBox(
                height: 20,
              ),
              Button(
                text: 'Send OTP',
                h: 44,
                w: 296,
                h1: 30,
                bdcolor: Colors.black,
                bgcolor: Colors.black,
                txcolor: Colors.white,
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                },
              ),
              SizedBox(
                height: 176,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Image(image: AssetImage('assets/image/Swati.png'),height: 34,fit: BoxFit.fill,),
              ),
              SizedBox(height: 3,),
              Text('Powered by: SwatiTech/SwatiCorp\nVersion 01',style: TextStyle(fontFamily: 'Roboto-Regular',fontSize: 12,color: Color(0xff444444)),textAlign: TextAlign.center,)
            ],
          )
        ],
      ),
    );
  }
}
