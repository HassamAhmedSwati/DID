import 'package:flutter/material.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Color(0xffFAC401),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Image(image: AssetImage('assets/image/DID_Logo_Black.png'),height: 35,width: 121,),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: 393,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(Icons.settings,size: 22,),
                ),
                SizedBox(width: 10,),
                Text('Setting',style: TextStyle(fontSize: 18,fontFamily: 'Roboto'),)
              ],
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
                        height: 115,
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
                          child: Image(image: AssetImage('assets/image/edit.png'),height: 25,width: 25,)
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text('Profile Image',style: TextStyle(fontSize: 16,fontFamily: 'Roboto'),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Personal Information',style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w600)),
                        SizedBox(width: 5,),
                        Image(image: AssetImage('assets/image/edit.png'),height: 25,width: 25,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffE7E7E7),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('First Name',style: TextStyle(fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.w400),),
                        SizedBox(width: 192,),
                        Text('Ben',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Middle Name ',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        Text('(If any)',style: TextStyle(fontFamily: 'Roboto-Regular',fontSize: 12,color: Color(0xff5F5F5F))),
                        SizedBox(width: 131,),
                        Text('Geller',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Last Name',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 171,),
                        Text('Franklin',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Email Address',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 52,),
                        Text('Ben.Franklin9@gmail.com',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Phone Number',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 89,),
                        Text('+1 (206) 342-8631',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Official Information',style: TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w600)),
                        SizedBox(width: 5,),
                        Image(image: AssetImage('assets/image/edit.png'),height: 25,width: 25,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffE7E7E7),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Official Full Name',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 106,),
                        Text('Ben Franklin',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('CNIC / SSN',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 96,),
                        Container(
                          height: 30,
                          width: 114,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.fromBorderSide(BorderSide(color: Colors.black)),
                          ),
                          child: Center(child: Text('Upload File')),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Passport/Drivers License',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 12,),
                        Container(
                          height: 30,
                          width: 114,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.fromBorderSide(BorderSide(color: Colors.black)),
                          ),
                          child: Center(child: Text('Upload File')),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Account Type',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 71,),
                        Text('CORPORATE ACCOUNT',style: TextStyle(fontSize: 14,color: Color(0xffFF0000),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Name',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 40,),
                        Text('Ben & Sons Enterprises.Co',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Reg. #',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 132,),
                        Text('#405351',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Address',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 48,),
                        Text('5867 S CENTRAL AVE \nSTE 200',style: TextStyle(fontSize: 14,color: Color(0xffA0A0A0),fontFamily: 'Roboto',fontWeight: FontWeight.w400),textAlign: TextAlign.end,)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Company Reg. Certificate',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w400,fontSize: 16),),
                        SizedBox(width: 10,),
                        Container(
                          height: 30,
                          width: 114,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.fromBorderSide(BorderSide(color: Colors.black)),
                          ),
                          child: Center(child: Text('Upload File')),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
