import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class ViewConnection extends StatefulWidget {
  const ViewConnection({super.key});

  @override
  State<ViewConnection> createState() => _ViewConnectionState();
}

class _ViewConnectionState extends State<ViewConnection> {
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
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
              ),
              SizedBox(
                height: 10,
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
              CircleAvatar(
                backgroundColor: Color(0xffFFE78E),
                child: Image(
                  image: AssetImage('assets/image/chat.png'),
                  height: 18,
                  width: 18,
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
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Lives In',style: TextStyle(fontSize: 18,fontFamily: 'Roboto',fontWeight: FontWeight.w600),)),
              ),
              SizedBox(height: 25,),
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
              SizedBox(height: 10,),
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
              SizedBox(height: 10,),
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
              SizedBox(height: 10,),
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
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(color: Color(0xffBBBBBB)),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                    Container(
                      height: 37,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Accept Request',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Roboto',color: Colors.white),)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 37,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.fromBorderSide(BorderSide(color: Color(0xffDF2626)))
                      ),
                      child: Center(child: Text('Reject Request',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Roboto',color: Color(0xffDF2626)),)),
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
