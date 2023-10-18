import 'package:country_code_picker/country_code_picker.dart';
import 'package:digital_agency/component/buttons.dart';
import 'package:flutter/material.dart';

class ProfileDetailEdit extends StatefulWidget {
  const ProfileDetailEdit({super.key});

  @override
  State<ProfileDetailEdit> createState() => _ProfileDetailEditState();
}

class _ProfileDetailEditState extends State<ProfileDetailEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xffFAC401),
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Image(image: AssetImage('assets/image/DID_Logo_Black.png'),height: 35,width: 121,),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 45,
              width: 393,
              child: Row(
                children: [
                  Icon(Icons.settings,size: 22,),
                  SizedBox(width: 5,),
                  Text('Setting',style: TextStyle(fontSize: 18,fontFamily: 'Roboto'),)
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xffE7E7E7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Icon(Icons.person,size: 40,),
                      Container(
                        height: 110,
                        width: 115,
                      ),
                      Positioned(
                        right: 1,
                        bottom: 2,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Color(0xffFAC401),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image(image: AssetImage('assets/image/edit.png'),height: 22,width: 22,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text('Profile Image',style: TextStyle(fontFamily: 'Roboto',fontSize: 16),),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Personal Information',style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w600),textAlign: TextAlign.start,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffE7E7E7),thickness: 1,),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('First Name',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 68,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Ben',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Middle Name',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        Text('(If any)',style: TextStyle(color: Color(0xff5F5F5F),fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Roboto'),),
                        SizedBox(width: 20,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Geller',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Last Name',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 69,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Franklin',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Email Address',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 47,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Ben.Franklin9@gmail.c',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Phone Number',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 43),
                        Container(
                          height: 32,
                          width: 145,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(fontFamily: 'Roboto-Medium,',fontWeight: FontWeight.w400,fontSize: 14 ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xff999999))
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xff999999),)
                              ),
                              prefixIcon: Container(
                                width: 72,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CountryCodePicker(
                                      initialSelection: 'PK',
                                      padding: EdgeInsets.zero,
                                      showFlag: true,
                                      flagWidth: 18,
                                      textStyle: TextStyle(fontSize: 10,color: Colors.black,),

                                    ),
                                    Container(
                                      height: 16,
                                      width: 1,
                                      color: Colors.black,
                                    ),

                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.zero
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Official Information',style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w600),textAlign: TextAlign.start,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffE7E7E7),thickness: 1,),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Official Full Name',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 26,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Ben Franklin',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('CNIC / SSN',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 96,),
                        Container(
                          height: 32,
                          width: 114,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Colors.black))
                          ),
                          child: Center(child: Text('Upload File',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Passport / Drivers License',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 4,),
                        Container(
                          height: 32,
                          width: 114,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Colors.black))
                          ),
                          child: Center(child: Text('Upload File',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Name',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 37,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Ben & Sons Enterprise..',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Reg. #',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 34,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('#405351',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Address',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 23,),
                        Container(
                          height: 32,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Color(0xff999999)))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('5867 S CENTRAL AVE..',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffA0A0A0)),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Reg. Certificate',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 9,),
                        Container(
                          height: 32,
                          width: 114,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.fromBorderSide(BorderSide(color: Colors.black))
                          ),
                          child: Center(child: Text('Upload File',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    child: Divider(color: Color(0xffE7E7E7),thickness: 1,),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Button(text: 'Save Changes', h: 44, w: 130, h1: 0, bdcolor: Colors.black, bgcolor: Colors.black,txcolor: Colors.white,),
                        SizedBox(width: 10,),
                        Button(text: 'Undo Changes', h: 44, w: 130, h1: 0, bdcolor: Colors.red, bgcolor: Colors.white,txcolor: Colors.red,),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
