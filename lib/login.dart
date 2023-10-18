import 'package:digital_agency/component/buttons.dart';
import 'package:digital_agency/component/navigation_bar.dart';
import 'package:digital_agency/component/textfield.dart';
import 'package:digital_agency/home_screen_individual.dart';
import 'package:digital_agency/password_recovery.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
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
                height: 50,
              ),
              Image(
                image: AssetImage('assets/image/DID_Logo.png'),
                width: 190,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Login to your Digital Identity',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 19,
                    color: Color(0xff111111)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: FormFieldText(
                  h: 44,
                  w: 296,
                  text: 'Email/Mobile Number',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: FormFieldText(
                  h: 44,
                  w: 296,
                  flag: true,
                  text: 'Password',
                  // icon: Image: AssetImage('assets/image/eye.png'),size: 10.0,),
                icon: Padding(
                  padding: const EdgeInsets.only(right: 15,bottom: 5),
                  child: Image(image: AssetImage('assets/image/eye.png'),alignment: Alignment.bottomRight,color: Color(0xff666666),),
                ),
                ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        activeColor: Color(0xffFAC401),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                          color: Color(0xffFAC401),
                          fontSize: 14,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    InkWell(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0xffFAC401),
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordRecovery()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Button(
                      text: 'Login',
                      h: 44,
                      w: 190,
                      h1: 20,
                      bdcolor: Colors.black,
                      bgcolor: Colors.black,
                      txcolor: Colors.white,
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
                      },
                    ),
                    Image(image: AssetImage('assets/image/print.png')),
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
                  Text(
                    'New to digital Identity?',
                    style: TextStyle(fontSize: 14,),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Get Registered',
                    style: TextStyle(
                        color: Color(0xffFAC401),
                        fontSize: 14,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              CircleAvatar(
                child: Image(image: AssetImage('assets/image/Swati.png'),height: 34,fit: BoxFit.fill,),
                backgroundColor: Colors.black,
              ),
              SizedBox(height: 5,),
              Text('Powered by: SwatiTech/SwatiCorp\nVersion 01',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,)
            ],
          ),
        ],
      ),
    );
  }
}
