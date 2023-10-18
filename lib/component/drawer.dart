import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({super.key,});

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          backgroundColor: Color(0xffFFFFFF),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 240),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Color(0xffE8E8E8),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Image(
                            image: AssetImage('assets/image/cross.png'),
                            height: 11.67,
                            width: 11.67,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffE8E8E8),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Image(
                                image: AssetImage('assets/image/profile.png'),
                                width: 20,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Sam Andrews',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Businessman, ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff5F5F5F)
                                        ),
                                        textAlign: TextAlign.start,
                                      )),
                                  Text(
                                    'Lahore ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5F5F5F)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  CountryFlag.fromCountryCode('pk',height: 10,width: 15,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text(
                                      'Nationality: ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff111111)
                                      )
                                  ),
                                  Text(
                                    'Pakistan',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5F5F5F)
                                    ),
                                  ),
                                  CountryFlag.fromCountryCode('PK',height: 11.09,width: 19,)
                                ],
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 5,
                                width: 150,
                                child: LinearProgressIndicator(
                                  value: 0.15,
                                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFFC801)),
                                  backgroundColor: Color(0xffD9D9D9),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('Profile:',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff111111)
                                    ),
                                  ),
                                  Text('  15% Completed',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFF4343)
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Divider(
                  thickness: 1.1,
                  color: Color(0xff000000).withOpacity(0.1,),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/image/profile.png'),
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,fontFamily: 'Roboto-Medium'
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.1,
                  color: Color(0xff000000).withOpacity(0.1,),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/image/Frame.png'),
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Connections',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto-Medium'
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.1,
                  color: Color(0xff000000).withOpacity(0.1,),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/image/peoples.png'),
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Requests',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto-Medium'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: 'Roboto-Medium'),
                          )),
                    ),
                    SizedBox(
                      width: 135,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.1,
                  color: Color(0xff000000).withOpacity(0.1,),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/image/safe.png'),
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Safe Area',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto-Medium'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.1,
                  color: Color(0xff000000).withOpacity(0.1,),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Setting',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto-Medium'),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.1,
                  color: Color(0xff000000).withOpacity(0.1,),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/image/logout.png'),
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto-Medium',
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.1,
                  color: Color(0xff000000).withOpacity(0.1,),
                ),
                SizedBox(
                  height: 80,
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
                  'Powered by: SwatiTech/SwatiCorp\nV01.00',
                  style: TextStyle(fontSize: 12,fontFamily: 'Roboto-Medium',fontWeight: FontWeight.w500,color: Color(0xff444444).withOpacity(0.9)),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
    );
  }
}
