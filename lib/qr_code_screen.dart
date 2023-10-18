import 'dart:developer';
import 'dart:io';

import 'package:country_flags/country_flags.dart';
import 'package:digital_agency/component/drawer.dart';
import 'package:digital_agency/component/first_page.dart';
import 'package:digital_agency/home_screen_individual.dart';
import 'package:digital_agency/notification.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  bool flag = false;
  bool flag1 = false;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    }
    controller?.resumeCamera();
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xffFAC401),
          title: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Image(
              image: AssetImage('assets/image/DID_Logo_Black.png'),
              height: 30,
              width: 100,
              color: Colors.black,
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
                      child: Image(
                        image: AssetImage('assets/image/bell.png'),
                        height: 20,
                        width: 18.13,
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
              height: 37,
              width: 393,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'Share QR',
                  ),
                  Tab(
                    text: 'Scan QR',
                  )
                ],
                labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto'),
                labelColor: Colors.black,
                dividerColor: Colors.black,
                indicatorColor: Color(0xffFAC401),
                unselectedLabelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
                unselectedLabelColor: Color(0xff5F5F5F),
                indicatorWeight: 2,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                // splashBorderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: TabBarView(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Share Your QR',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.fromBorderSide(
                              BorderSide(color: Colors.black))),
                      child: QrImageView(
                        data: 'This QR code has an embedded image as well',
                        version: QrVersions.auto,
                        size: 320,
                        gapless: true,
                        embeddedImage: AssetImage('assets/images/my_embedded_image.png'),
                        embeddedImageStyle: QrEmbeddedImageStyle(
                          size: Size(80, 80),
                        ),
                      )
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFAC401),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Share',
                            style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.share_outlined,
                            size: 15,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Your QR Code is private. If you share it with\nsomeone, they can scan it with their\nDiDconnect camera to add you as connection',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Medium',
                        fontSize: 14,
                        color: Color(0xff5F5F5F),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Fetch QR Code',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Place QR inside the frame to scan',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto-Regular',
                        // color: Color(0xff5F5F5F)
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Stack(children: [
                      Container(
                          height: 349,
                          width: 280,
                          child: Image(
                            image: AssetImage('assets/image/Group.png'),
                            color: Color(0xffFAC401),
                            height: 345,
                            width: 278,
                            fit: BoxFit.fill,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.4, left: 4),
                        child: SizedBox(
                          height: 340,
                          width: 272,
                          child: QRView(
                            // overlay: QrScannerOverlayShape(
                            //   borderRadius: 1,
                            //   borderLength: 80,
                            //   borderWidth: 5
                            // ),
                            overlayMargin: EdgeInsets.all(5),
                            key: qrKey, onQRViewCreated: onQRViewCreated,
                            onPermissionSet: (ctrl, p) =>
                                _onPermissionSet(context, ctrl, p),
                          ),
                        ),
                      ),
                    ]),
                    Center(child: Text('${result?.code ?? "No QR Code scanned"}'))

                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
