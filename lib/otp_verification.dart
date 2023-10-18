import 'package:digital_agency/component/buttons.dart';
import 'package:digital_agency/component/textfield.dart';
import 'package:digital_agency/login.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                )),
          ),
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image(
                image: AssetImage('assets/image/DID_Logo.png'),
                width: 190,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Reset Your Password',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto-Medium',
                    color: Color(0xff111111)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: FormFieldText(h: 44, w: 296, text: 'New Password'),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: FormFieldText(h: 44, w: 296, text: 'Confirm Password'),
              ),
              SizedBox(
                height: 30,
              ),
              Button(
                text: 'Save Password',
                h: 44,
                w: 296,
                h1: 30,
                bdcolor: Colors.black,
                bgcolor: Colors.black,
                txcolor: Colors.white,
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
              ),
              SizedBox(
                height: 145,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Image(
                  image: AssetImage('assets/image/Swati.png'),
                  width: 34,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Powered by: SwatiTech/SwatiCorp\nVersion 01',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto-Regular',
                    color: Color(0xff444444)),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ],
      ),
    );
  }
}
