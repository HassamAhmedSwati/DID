import 'package:digital_agency/account_detail.dart';
import 'package:digital_agency/component/buttons.dart';
import 'package:digital_agency/component/country_code.dart';
import 'package:digital_agency/component/filter.dart';
import 'package:digital_agency/component/navigation_bar.dart';
import 'package:digital_agency/component/textfield.dart';
import 'package:digital_agency/connection_deatil.dart';
import 'package:digital_agency/edit_profile_detail.dart';
import 'package:digital_agency/home_screen_corporate.dart';
import 'package:digital_agency/home_screen_individual.dart';
import 'package:digital_agency/login.dart';
import 'package:digital_agency/login_register.dart';
import 'package:digital_agency/notification.dart';
import 'package:digital_agency/otp_screen.dart';
import 'package:digital_agency/otp_verification.dart';
import 'package:digital_agency/password_recovery.dart';
import 'package:digital_agency/profile_detail.dart';
import 'package:digital_agency/qr_code_screen.dart';
import 'package:digital_agency/registration.dart';
import 'package:digital_agency/request_individual.dart';
import 'package:digital_agency/requests_corporate.dart';
import 'package:digital_agency/view_connection_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Registration(),
    );
  }
}
