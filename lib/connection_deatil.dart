import 'dart:ui';

import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class HomeConnection extends StatefulWidget {
  const HomeConnection({super.key});

  @override
  State<HomeConnection> createState() => _HomeConnectionState();
}

class _HomeConnectionState extends State<HomeConnection> {
  bool flag = false;

  Future<void> _showDialog4(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 0, sigmaX: 0),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 200),
                      child: StatefulBuilder(
                        builder: (context, setState) {
                          return Stack(
                            children: [
                              Container(
                                height: 299,
                                width: 296,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 13,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Are You Sure To Remove',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Roboto-Medium',
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Container(
                                              height: 65,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                color: Color(0xffE7E7E7),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Icon(
                                                Icons.person,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10),
                                                child: Text(
                                                  'Abigail Bella Gabriel',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w600,
                                                      fontFamily: 'Roboto',
                                                      decoration: TextDecoration.none,
                                                      color: Colors.black
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Image(
                                                    image: AssetImage('assets/image/chart.png'),
                                                    height: 10,
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Connection Type',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color(0xff5F5F5F),
                                                        fontWeight: FontWeight.w400,
                                                        decoration: TextDecoration.none,
                                                        fontFamily: 'Roboto'),
                                                  ),
                                                  SizedBox(
                                                    width: 57,
                                                  ),
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 10,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Location',
                                                    style: TextStyle(
                                                      color: Color(0xff5F5F5F),
                                                      decoration: TextDecoration.none,
                                                      fontSize: 12,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Individual',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xff5F5F5F),
                                                        decoration: TextDecoration.none,
                                                        fontWeight: FontWeight.w400,
                                                        fontFamily: 'Roboto'),
                                                  ),
                                                  SizedBox(
                                                    width: 55,
                                                  ),
                                                  Text(
                                                    'Location, Pk ',
                                                    style: TextStyle(
                                                      color: Color(0xff5F5F5F),
                                                      decoration: TextDecoration.none,
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  CountryFlag.fromCountryCode(
                                                    'PK',
                                                    height: 14,
                                                    width: 22,
                                                    borderRadius: 4,
                                                  ),
                                                  // Image(image: AssetImage('assets/image/pakistan.png'))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Divider(color: Colors.grey,),
                                    ),
                                    SizedBox(height: 3,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 22),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 95,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Center(
                                                child: Text(
                                                  'Apply Filter',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: 'Roboto',
                                                      decoration: TextDecoration.none,
                                                      color: Colors.white),
                                                )),
                                          ),
                                          SizedBox(width: 15,),
                                          Container(
                                            height: 30,
                                            width: 95,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.fromBorderSide(BorderSide(color: Colors.black))
                                            ),
                                            child: Center(
                                                child: Text(
                                                  'No, Return',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: 'Roboto',
                                                      decoration: TextDecoration.none,
                                                      color: Colors.black),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 12,
                                right: 13,
                                child: Container(
                                  height: 7.5,
                                  width: 7.5,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Image(
                                      image: AssetImage('assets/image/cross.png'),
                                      height: 6,
                                      width: 6,
                                      alignment: Alignment.topRight,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      )),
                ),
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFAC401),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Image(
            image: AssetImage('assets/image/DID_Logo_Black.png'),
            height: 30,
            width: 100,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: 393,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/image/persons.png'),
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Connection Details',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Stack(children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffE7E7E7),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/image/profile.png'),
                      height: 35.5,
                      width: 31.2,
                    )),
                  ),
                  Container(
                    height: 85,
                    width: 85,
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      height: 20.31,
                      width: 20.32,
                      decoration: BoxDecoration(
                        color: Color(0xffFAC401),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image(image: AssetImage('assets/image/edit.png'),height: 13,width: 13,),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Anna Ashley',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.share,
                    size: 14,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                width: 35,
                child: CircleAvatar(
                  backgroundColor: Color(0xffFAC401),
                  child: Image(
                    image: AssetImage('assets/image/chat.png'),
                    height: 18,
                    width: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Color(0xffBBBBBB),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Profession',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 111,
                    ),
                    Text('Businesswoman',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff5F5F5F).withOpacity(0.7))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Nationality',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 133,
                    ),
                    CountryFlag.fromCountryCode(
                      'Pk',
                      borderRadius: 4,
                      height: 15.85,
                      width: 22,
                    ),
                    Text(' Pakistan',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff5F5F5F).withOpacity(0.7))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Color(0xffBBBBBB),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Lives In',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'City',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text('Los Angeles',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff5F5F5F).withOpacity(0.7))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'State:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 182,
                    ),
                    Text('California',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff5F5F5F).withOpacity(0.7))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Country:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 118,
                    ),
                    CountryFlag.fromCountryCode(
                      'Us',
                      borderRadius: 4,
                      height: 15.85,
                      width: 22,
                    ),
                    Text(' United States',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff5F5F5F).withOpacity(0.7))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Connection Type :',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 109,
                    ),
                    Text('Individual',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff5F5F5F).withOpacity(0.7))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Connection Status :',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      width: 93,
                    ),
                    Text('Connected',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff00A1D8).withOpacity(0.7))),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(color: Color(0xffBBBBBB)),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 37,
                        width: 255,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Remove Connection',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Colors.white),
                        )),
                      ),
                      onTap: (){
                        _showDialog4(context);
                      },
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
