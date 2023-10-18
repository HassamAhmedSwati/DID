import 'package:digital_agency/component/buttons.dart';
import 'package:digital_agency/login.dart';
import 'package:digital_agency/registration.dart';
import 'package:flutter/material.dart';

class Login_Registration extends StatefulWidget {
  const Login_Registration({super.key});

  @override
  State<Login_Registration> createState() => _Login_RegistrationState();
}

class _Login_RegistrationState extends State<Login_Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/image/DID_Logo.png'),
                  height: 100,
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your',
                      style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                    ),
                    Text(
                      ' BLOCKCHAIN',
                      style: TextStyle(
                          color: Color(0xffFAC401),
                          fontSize: 14,
                          fontFamily: 'Roboto'),
                    ),
                    Text(
                      ' based extremely secured',
                      style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('DIGITAL IDENTITY',
                        style: TextStyle(
                            color: Color(0xffFAC401),
                            fontSize: 14,
                            fontFamily: 'Roboto')),
                    Text(
                      ' to connect with the world',
                      style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Button(
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                    },
                      text: "Register",
                      h: 37,
                      w: 260,
                      h1: 30,
                      bdcolor: Colors.black,
                      bgcolor: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Button(
                    text: "Login",
                    h: 37,
                    w: 260,
                    h1: 30,
                    bdcolor: Colors.black,
                    bgcolor: Colors.black,
                    txcolor: Colors.white,
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('By registering, you will be agreeing to our',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 14)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Privacy Policy & User Agreement',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      color: Color(0xffFAC401)),
                ),
                SizedBox(
                  height: 160,
                ),
                // Image(image: AssetImage('assets/image/Swati.png'),),
                CircleAvatar(
                  child: Image(
                    image: AssetImage('assets/image/Swati.png'),
                    color: Colors.white,
                    fit: BoxFit.contain,
                    height: 32,
                  ),
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Powered by: SwatiTech/SwatiCorp\nVersion 01',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
