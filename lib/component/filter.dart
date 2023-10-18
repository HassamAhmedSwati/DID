import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              activeColor: Colors.cyan,
              checkColor: Colors.black,
              value: isChecked, onChanged: (value){
            isChecked=value!;
          }),
        ],
      ),
    );
  }
}




// Container(
//   height: 19.54,
//   width: 130,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       border: Border.fromBorderSide(
//           BorderSide(color: Color(0xff111111)))),
//   child: Row(
//     children: [
//       Container(
//         height: 10,
//         width: 10,
//         margin: EdgeInsets.all(5),
//         child: Material(
//           child: Radio(
//             materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//               value: 'Individual Connections',
//               groupValue: option,
//               onChanged: (value) {
//                 setState(() {
//                   option=value!;
//                 });
//               }),
//         ),
//       ),
//       Text(
//         'Individual Connections',
//         style: TextStyle(
//             fontSize:7,
//             color: Colors.black,
//             decoration: TextDecoration.none),
//       ),
//     ],
//   ),
// ),