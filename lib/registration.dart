import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:digital_agency/component/buttons.dart';
import 'package:digital_agency/component/textfield.dart';
import 'package:digital_agency/login.dart';
import 'package:digital_agency/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  // Future<void> _showDialog(BuildContext context) async {
  //   await showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Stack(
  //           children: [
  //             BackdropFilter(
  //               filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
  //               child: Container(
  //                 color: Colors.grey.withOpacity(0.3),
  //                 child: Padding(
  //                   padding: const EdgeInsets.symmetric(
  //                       horizontal: 40, vertical: 250),
  //                   child: Container(
  //                     height: 207,
  //                     width: 327,
  //                     decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.circular(15),
  //                     ),
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         SizedBox(
  //                           height: 10,
  //                         ),
  //                         Center(
  //                           child: Text('Account Already Exists',
  //                               style: TextStyle(
  //                                   color: Colors.black,
  //                                   fontWeight: FontWeight.w500,
  //                                   fontSize: 18,
  //                                   fontFamily: 'Roboto',
  //                                   decoration: TextDecoration.none)),
  //                         ),
  //                         SizedBox(
  //                           height: 25,
  //                         ),
  //                         GestureDetector(
  //                           onTap: (){
  //                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
  //                           },
  //                           child: Padding(
  //                             padding: const EdgeInsets.symmetric(horizontal: 30),
  //                             child: Container(
  //                               height: 38,
  //                               width: 245,
  //                               decoration: BoxDecoration(
  //                                 color: Colors.black,
  //                                 borderRadius: BorderRadius.circular(8),
  //                               ),
  //                               child: Center(
  //                                   child: Text(
  //                                 'Login To Account',
  //                                 style: TextStyle(
  //                                     fontSize: 16,
  //                                     fontFamily: 'Roboto',
  //                                     fontWeight: FontWeight.w500,
  //                                     color: Colors.white,
  //                                     decoration: TextDecoration.none),
  //                               )),
  //                             ),
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           height: 8,
  //                         ),
  //                         GestureDetector(
  //                           child: Padding(
  //                             padding: const EdgeInsets.symmetric(horizontal: 30),
  //                             child: Container(
  //                               height: 38,
  //                               width: 245,
  //                               decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(8),
  //                                   border: Border.fromBorderSide(
  //                                       BorderSide(color: Colors.black))),
  //                               child: Center(
  //                                   child: Text(
  //                                 'Forgot Credentials?',
  //                                 style: TextStyle(
  //                                     fontSize: 16,
  //                                     fontFamily: 'Roboto',
  //                                     fontWeight: FontWeight.w500,
  //                                     color: Colors.black,
  //                                     decoration: TextDecoration.none),
  //                               )),
  //                             ),
  //                           ),
  //                         )
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                      'Register New Account',
                      style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          fontSize: 18,
                          color: Color(0xff111111)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: FormFieldText(h: 47, w: 296, text: 'Enter Email'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Container(
                        height: 47,
                        width: 296,
                        child: TextFormField(
                          style: TextStyle(
                              fontFamily: 'Roboto-Regular,',
                              decoration: TextDecoration.none),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Enter Phone',
                            labelStyle: TextStyle(
                                color: Color(0xff5F5F5F),
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0xff666666))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0xff666666))),
                            prefixIcon: Container(
                              width: 85,
                              margin: EdgeInsets.all(0.2),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CountryCodePicker(
                                    initialSelection: 'pk',
                                    padding: EdgeInsets.zero,
                                    flagWidth: 20,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 1.5,
                                    color: Color(0xffBBBBBB),
                                    // child: Text('|',style: TextStyle(color: Color(0xffBBBBBB)),)
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: FormFieldText(
                        h: 47,
                        w: 296,
                        text: 'Enter Password',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: FormFieldText(
                        h: 47,
                        w: 296,
                        text: 'Confirm Password',
                        icon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Button(
                      text: 'Register',
                      h: 35,
                      w: 296,
                      h1: 30,
                      bdcolor: Colors.black,
                      bgcolor: Colors.black,
                      txcolor: Colors.white,
                      onPress: () {
                      //   _showDialog(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Already registered?',
                            style: TextStyle(fontSize: 16)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xffFAC401),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 115,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        child: Image(
                          image: AssetImage('assets/image/Swati.png'),
                          height: 25,
                          width: 25,
                          fit: BoxFit.fill,
                        ),
                        backgroundColor: Colors.black,
                      ),
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
                )
              ]),
        ));
  }
}
