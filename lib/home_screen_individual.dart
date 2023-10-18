import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_flags/country_flags.dart';
import 'package:digital_agency/component/drawer.dart';
import 'package:digital_agency/edit_profile_detail.dart';
import 'package:digital_agency/notification.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_screen_corporate.dart';

class HomeScreenIndividual extends StatefulWidget {
  const HomeScreenIndividual({super.key});

  @override
  State<HomeScreenIndividual> createState() => _HomeScreenIndividualState();
}

class _HomeScreenIndividualState extends State<HomeScreenIndividual> {
  bool flag = false;

  Future<void> _showDialog1(BuildContext context) async {
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
                          horizontal: 35, vertical: 245),
                      child: StatefulBuilder(
                        builder: (context, setState) {
                          return Stack(
                            children: [
                              Container(
                                height: 205,
                                width: 296,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 86,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              color: Color(0xffFFC801),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 15),
                                              child: Row(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                      'assets/image/sliders.png',
                                                    ),
                                                    height: 14,
                                                    width: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Filter',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        decoration:
                                                        TextDecoration.none,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 130,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Choose Your Connections Preference',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Roboto-Medium',
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                      thickness: .5,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                flag = true;
                                              });
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreenIndividual()));
                                            },
                                            child: Container(
                                              height: 19.54,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                border: Border.fromBorderSide(
                                                    BorderSide(
                                                        color: flag == true
                                                            ? Colors.black
                                                            : Color(0xff5F5F5F))),
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 12.11,
                                                    width: 12.11,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(10),
                                                      border: Border.fromBorderSide(
                                                          BorderSide(
                                                              color: flag == true
                                                                  ? Colors.black
                                                                  : Color(
                                                                  0xff5F5F5F))),
                                                    ),
                                                    child: Container(
                                                      height: 3.55,
                                                      width: 3.55,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                        border:
                                                        Border.fromBorderSide(
                                                            BorderSide(
                                                                color: Colors
                                                                    .white)),
                                                        color: flag == true
                                                            ? Color(0xffFAC401)
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    'Personal Connections',
                                                    style: TextStyle(
                                                        fontSize: 9.5,
                                                        color: flag == true
                                                            ? Colors.black
                                                            : Color(0xff5F5F5F),
                                                        fontFamily: flag == true
                                                            ? 'Roboto-Bold'
                                                            : 'Roboto-Regular',
                                                        decoration:
                                                        TextDecoration.none),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                flag = false;
                                              });
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreenCorporate()));
                                            },
                                            child: Container(
                                              height: 19.54,
                                              width: 104,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                border: Border.fromBorderSide(
                                                    BorderSide(
                                                        color: flag == false
                                                            ? Colors.black
                                                            : Color(0xff5F5F5F))),
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    height: 12.11,
                                                    width: 12.11,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(10),
                                                      border: Border.fromBorderSide(
                                                          BorderSide(
                                                              color: flag == false
                                                                  ? Colors.black
                                                                  : Color(
                                                                  0xff5F5F5F))),
                                                    ),
                                                    child: Container(
                                                      height: 3.55,
                                                      width: 3.55,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                        border:
                                                        Border.fromBorderSide(
                                                            BorderSide(
                                                                color: Colors
                                                                    .white)),
                                                        color: flag == false
                                                            ? Color(0xffFAC401)
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(
                                                    'Corporate Connections',
                                                    style: TextStyle(
                                                        fontSize: 9.5,
                                                        color: flag == false
                                                            ? Colors.black
                                                            : Color(0xff5F5F5F),
                                                        fontFamily: flag == false
                                                            ? 'Roboto-Bold'
                                                            : 'Roboto-Regular',
                                                        decoration:
                                                        TextDecoration.none),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      height: 25,
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
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 12,
                                right: 14,
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
        backgroundColor: Color(0xffFAC401),
        title: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: InkWell(
            child: Image(
              image: AssetImage('assets/image/DID_Logo_Black.png'),
              height: 30,
              width: 100,
              color: Colors.black,
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(children: [
              Center(
                child: Container(
                  height: 34,
                  width: 34,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffFFE78E),
                    child: InkWell(
                      child: Image(
                        image: AssetImage('assets/image/bell.png'),
                        height: 20,
                        width: 18.13,
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 0,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: Color(0xffFF1212),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    '2',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        fontFamily: 'Roboto-Regular'),
                  )),
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 34,
              width: 34,
              child: CircleAvatar(
                  backgroundColor: Color(0xffFFE78E),
                  child: Image(
                    image: AssetImage('assets/image/search.png'),
                    height: 16,
                    width: 16,
                  )),
            ),
          ),
        ],
        elevation: 0,
      ),
      drawer: DrawerComponent(),
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
                    image: AssetImage('assets/image/Frame.png'),
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Connections - Individual',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showDialog1(context);
                    },
                    child: Container(
                      height: 26,
                      width: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.fromBorderSide(
                          BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/image/sliders.png',
                              ),
                              height: 14,
                              width: 14,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Filter',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Roboto'),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
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
                  'Total Connections',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      color: Color(0xff5F5F5F)),
                ),
                Text('  (45)',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        color: Color(0xffBBBBBB))),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 94,
                  width: 345,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
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
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Row(
                                children: [
                                  Text(
                                    'Abigail Bella Gabriel',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'View',
                                    style: TextStyle(
                                        color: Color(0xff00A1D8),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
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
                                      fontFamily: 'Roboto'),
                                ),
                                SizedBox(
                                  width: 55,
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
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Individual',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff5F5F5F),
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
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 94,
                  width: 345,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
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
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Row(
                                children: [
                                  Text(
                                    'Cem Şahin',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: 107,
                                  ),
                                  Text(
                                    'View',
                                    style: TextStyle(
                                        color: Color(0xff00A1D8),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
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
                                      fontFamily: 'Roboto'),
                                ),
                                SizedBox(
                                  width: 55,
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
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Individual',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff5F5F5F),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto'),
                                ),
                                SizedBox(
                                  width: 55,
                                ),
                                Text(
                                  'Istanbul, TR ',
                                  style: TextStyle(
                                    color: Color(0xff5F5F5F),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                CountryFlag.fromCountryCode(
                                  'tr',
                                  height: 14,
                                  width: 22,
                                  borderRadius: 4,
                                ),
                                // Image(image: AssetImage('assets/image/pakistan.png'))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 94,
                  width: 345,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
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
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Row(
                                children: [
                                  Text(
                                    'Jasmine Isabella ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    'View',
                                    style: TextStyle(
                                        color: Color(0xff00A1D8),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
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
                                      fontFamily: 'Roboto'),
                                ),
                                SizedBox(
                                  width: 55,
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
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Individual',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff5F5F5F),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto'),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Los Angeles, USA',
                                  style: TextStyle(
                                    color: Color(0xff5F5F5F),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                CountryFlag.fromCountryCode(
                                  'Us',
                                  height: 14,
                                  width: 22,
                                  borderRadius: 4,
                                ),
                                // Image(image: AssetImage('assets/image/pakistan.png'))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
