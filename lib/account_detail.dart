import 'package:digital_agency/component/buttons.dart';
import 'package:digital_agency/component/textfield.dart';
import 'package:digital_agency/login.dart';
import 'package:flutter/material.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({super.key});

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  // String _selectedValue='';
  var defaultValue = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                )),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage('assets/image/DID_Logo.png'),
                    width: 190,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffE7E7E7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.person,
                          size: 35,
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 75,
                      ),
                      Positioned(
                        left: 57,
                        top: 47,
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              color: Color(0xffFAC400),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Icon(
                              Icons.camera_alt,
                              size: 12,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: FormFieldText(
                      h: 42,
                      w: 296,
                      text: 'Enter Name to Display',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 42,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                          borderRadius: BorderRadius.circular(20),
                          value: defaultValue,
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            labelStyle: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: 'Roboto-Medium'),
                            contentPadding:
                                EdgeInsets.only(bottom: 0.0, left: 12),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Male',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '0',
                            ),
                            DropdownMenuItem(
                              child: Text('Female',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text('Other',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '2',
                            ),
                          ],
                          onChanged: (_value) {}),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 42,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                          borderRadius: BorderRadius.circular(20),
                          value: defaultValue,
                          decoration: InputDecoration(
                            labelText: 'Profession',
                            labelStyle: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                            contentPadding:
                                EdgeInsets.only(bottom: 0.0, left: 12),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Student',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '0',
                            ),
                            DropdownMenuItem(
                              child: Text('Government Servant',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text('Private Job',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '2',
                            ),
                            DropdownMenuItem(
                              child: Text('Doctor',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '3',
                            ),
                            DropdownMenuItem(
                              child: Text('Engineer',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '4',
                            ),
                            DropdownMenuItem(
                              child: Text('Other',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '5',
                            ),
                          ],
                          onChanged: (_value) {}),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 42,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                          borderRadius: BorderRadius.circular(20),
                          value: defaultValue,
                          decoration: InputDecoration(
                            labelText: 'Nationality',
                            labelStyle: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                            contentPadding:
                                EdgeInsets.only(bottom: 0.0, left: 12),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('USA',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '0',
                            ),
                            DropdownMenuItem(
                              child: Text('Pakistan',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text('Dubai',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '2',
                            ),
                            DropdownMenuItem(
                              child: Text('Austria',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '3',
                            ),
                            DropdownMenuItem(
                              child: Text('Australia',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '4',
                            ),
                            DropdownMenuItem(
                              child: Text('India',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '5',
                            ),
                            DropdownMenuItem(
                              child: Text('Saudia Arabia',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '6',
                            ),
                            DropdownMenuItem(
                              child: Text('England',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '7',
                            ),
                            DropdownMenuItem(
                              child: Text('Canada',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '8',
                            ),
                            DropdownMenuItem(
                              child: Text('Turkey',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '9',
                            ),
                            DropdownMenuItem(
                              child: Text('Other',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '10',
                            ),
                          ],
                          onChanged: (_value) {}),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 42,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                          borderRadius: BorderRadius.circular(20),
                          value: defaultValue,
                          decoration: InputDecoration(
                            labelText: 'Current Residence Country',
                            labelStyle: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                            contentPadding:
                                EdgeInsets.only(bottom: 0.0, left: 12),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('USA',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '0',
                            ),
                            DropdownMenuItem(
                              child: Text('Pakistan',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text('Dubai',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '2',
                            ),
                            DropdownMenuItem(
                              child: Text('Austria',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '3',
                            ),
                            DropdownMenuItem(
                              child: Text('Australia',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '4',
                            ),
                            DropdownMenuItem(
                              child: Text('India',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '5',
                            ),
                            DropdownMenuItem(
                              child: Text('Saudia Arabia',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '6',
                            ),
                            DropdownMenuItem(
                              child: Text('England',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '7',
                            ),
                            DropdownMenuItem(
                              child: Text('Canada',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '8',
                            ),
                            DropdownMenuItem(
                              child: Text('Turkey',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '9',
                            ),
                            DropdownMenuItem(
                              child: Text('Other',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '10',
                            ),
                          ],
                          onChanged: (_value) {}),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 42,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                          borderRadius: BorderRadius.circular(20),
                          value: defaultValue,
                          decoration: InputDecoration(
                            labelText: 'Current Residence State/Province',
                            labelStyle: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                            contentPadding:
                                EdgeInsets.only(bottom: 0.0, left: 12),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('KPK',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '0',
                            ),
                            DropdownMenuItem(
                              child: Text('AJK',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text('Gilgit Baltistan',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '2',
                            ),
                            DropdownMenuItem(
                              child: Text('Punjab',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '3',
                            ),
                            DropdownMenuItem(
                              child: Text('Sindh',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '4',
                            ),
                            DropdownMenuItem(
                              child: Text('Other',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '5',
                            ),
                          ],
                          onChanged: (_value) {}),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 42,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                          borderRadius: BorderRadius.circular(20),
                          value: defaultValue,
                          decoration: InputDecoration(
                            labelText: 'Current Residence City/Town',
                            labelStyle: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: 'Roboto-Medium',
                                fontSize: 16),
                            contentPadding:
                                EdgeInsets.only(bottom: 0.0, left: 12),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff999999)),
                            ),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Abbottabad',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '0',
                            ),
                            DropdownMenuItem(
                              child: Text('Haripur',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text('Mansehra',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '2',
                            ),
                            DropdownMenuItem(
                              child: Text('Muzaffarabad',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '3',
                            ),
                            DropdownMenuItem(
                              child: Text('balakot',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '4',
                            ),
                            DropdownMenuItem(
                              child: Text('Other',
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 16)),
                              value: '5',
                            ),
                          ],
                          onChanged: (_value) {}),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Button(
                    text: 'Register',
                    h: 40,
                    w: 296,
                    h1: 30,
                    bdcolor: Colors.black,
                    bgcolor: Colors.black,
                    txcolor: Colors.white,
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/image/Swati.png'),
                      height: 34,
                      fit: BoxFit.fill,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Powered by: SwatiTech/SwatiCorp\nVersion 01',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
