import 'dart:developer';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:digital_agency/home_screen_corporate.dart';
import 'package:digital_agency/home_screen_individual.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _bottomNavIndex = 0;
  final List<Widget> screens = [
    HomeScreenIndividual(),
    HomeScreenCorporate(),
  ];
  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen = HomeScreenIndividual();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[_bottomNavIndex],
        floatingActionButton: CircleAvatar(
          radius: 29,
          backgroundColor: Colors.white,
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xffFAC401),
              child: Image(image: AssetImage('assets/image/qr.png'),height: 35,width: 35,)
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffFAC401),
        elevation: 0,
        notchMargin: 1,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  MaterialButton(
                    minWidth: 30,
                    onPressed: (){
                      setState(() {
                      });
                    },
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/image/secure.png'),height: 20,width: 20,),
                        SizedBox(height: 2,),
                        Text('Secure Area',style: TextStyle(fontSize: 12,fontFamily: 'Urbanist-Medium',fontWeight: FontWeight.w500),)
                      ],
                    )
                  ),
                  MaterialButton(
                      minWidth: 30,
                      onPressed: (){
                        setState(() {
                        });
                      },
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/image/chat.png'),height: 20,width: 20,),
                          SizedBox(height: 2,),
                          Text('Chat',style: TextStyle(fontSize: 12,fontFamily: 'Urbanist-Medium',fontWeight: FontWeight.w500),)
                        ],
                      )
                  ),
                  SizedBox(width: 50,),
                  MaterialButton(
                      minWidth: 30,
                      onPressed: (){
                        setState(() {
                        });
                      },
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.help_outlined,size: 23,),
                          SizedBox(height: 2,),
                          Text('Help',style: TextStyle(fontSize: 12,fontFamily: 'Urbanist-Medium',fontWeight: FontWeight.w500),)
                        ],
                      )
                  ),
                  MaterialButton(
                      minWidth: 30,
                      onPressed: (){
                        setState(() {
                        });
                      },
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/image/setting.png'),height: 20,width: 20,),
                          SizedBox(height: 2,),
                          Text('Setting',style: TextStyle(fontSize: 12,fontFamily: 'Urbanist-Medium',fontWeight: FontWeight.w500),)
                        ],
                      )
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
