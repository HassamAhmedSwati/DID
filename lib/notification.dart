import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFAC401),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: (){
            Navigator.pop(context);
            },
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Text(
                'Notification',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text('New',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 144,
            width: 393,
            decoration:
                BoxDecoration(color: Color(0xffFFC801).withOpacity(0.12)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                            child: Image(
                          image: AssetImage('assets/image/profile.png'),
                          height: 16,
                          width: 16,
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You have a new connection request from',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: Color(0xff5F5F5F)),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Jack Geller Mathew',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Color(0xff111111)),
                          ),
                          SizedBox(height: 5,),
                          Text('Sat at 11:55 am',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Color(0xff5F5F5F)),
                          ),
                        ],
                      ),
                      Container(
                        height: 19.54,
                        width: 76.42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.fromBorderSide(BorderSide(color: Colors.black))
                        ),
                        child: Center(
                          child: Text('View Details',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(color: Color(0xff000000).withOpacity(0.2),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,),
                  child: Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                            child: Image(
                              image: AssetImage('assets/image/profile.png'),
                              height: 16,
                              width: 16,
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Congratulations',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                    color: Color(0xff5F5F5F)),
                              ),
                              Image(image: AssetImage('assets/image/flower.png'),height: 17.82,width: 18,)
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Justin Hemsworth ',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                    color: Color(0xff111111)),
                              ),
                          Text('has accepted your',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Color(0xff5F5F5F),),
                            textAlign: TextAlign.start,
                          ),
                            ],
                          ),
                          Text('connection request',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              color: Color(0xff5F5F5F),),
                          ),
                          SizedBox(height: 5,),
                          Text('Sat at 11:55 am',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Color(0xff5F5F5F)),
                          ),
                        ],
                      ),
                      Container(
                        height: 19.54,
                        width: 76.42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.fromBorderSide(BorderSide(color: Colors.black))
                        ),
                        child: Center(
                          child: Text('View Details',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height:15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text('Earlier',style: TextStyle(fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w600,),),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/image/profile.png'),
                        height: 16,
                        width: 16,
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You have a new connection request from',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          color: Color(0xff5F5F5F)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Amanda Goldberg',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: Color(0xff111111)),
                    ),
                    SizedBox(height: 5,),
                    Text('Sat at 11:55 am',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: Color(0xff5F5F5F)),
                    ),
                  ],
                ),
                Container(
                  height: 19.54,
                  width: 76.42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.fromBorderSide(BorderSide(color: Colors.black))
                  ),
                  child: Center(
                    child: Text('View Details',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(color: Color(0xff000000).withOpacity(0.2),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/image/profile.png'),
                        height: 16,
                        width: 16,
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Congratulations',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              color: Color(0xff5F5F5F)),
                        ),
                        Image(image: AssetImage('assets/image/flower.png'),height: 17.82,width: 18,)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Emma Enterprises ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              color: Color(0xff111111)),
                        ),
                        Text('has accepted your',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            color: Color(0xff5F5F5F),),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Text('connection request',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                        color: Color(0xff5F5F5F),),
                    ),
                    SizedBox(height: 5,),
                    Text('Sat at 11:55 am',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: Color(0xff5F5F5F)),
                    ),
                  ],
                ),
                Container(
                  height: 19.54,
                  width: 76.42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.fromBorderSide(BorderSide(color: Colors.black))
                  ),
                  child: Center(
                    child: Text('View Details',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
