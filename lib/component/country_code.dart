import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class Country extends StatefulWidget {
  const Country({super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 30,vertical: 100),
    //     child: Container(
    //     height: 65,
    //     width: 296,
    //     child: IntlPhoneField(
    //       initialCountryCode: 'PK',
    //       dropdownTextStyle: TextStyle(fontSize: 16),
    //       textAlignVertical: TextAlignVertical.top,
    //       showDropdownIcon: false,
    //       style: TextStyle(fontSize: 17,),
    //       cursorColor: Colors.grey,
    //       decoration: InputDecoration(
    //         floatingLabelBehavior: FloatingLabelBehavior.always,
    //         floatingLabelAlignment: FloatingLabelAlignment.start,
    //         labelText:'Enter Phone',
    //         labelStyle: TextStyle(color: Color(0xff5F5F5F),),
    //         // prefixIcon: Image(image: AssetImage('assets/image/Line.png'),color: Colors.black,),
    //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xff666666))),
    //         focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xff666666))),
    //       ),
    //     )
    // ),
    //   )

      body: Center(
        child: CountryCodePicker(
          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
          initialSelection: 'PK',
          // showOnlyCountryWhenClosed: false,
          // optional. aligns the flag and the Text left
        ),
      ),
    );
  }
}
