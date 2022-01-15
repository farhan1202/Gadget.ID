import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';

class Inputfield extends StatelessWidget {
  const Inputfield({
    Key? key,
    required this.hint,
    this.passType = false,
    required this.iconD,
    this.textAction = TextInputAction.next,
  }) : super(key: key);

  final String hint;
  final bool passType;
  final IconData iconD;
  final TextInputAction textAction;
  // final TextEditingController txtC;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 15),
                blurRadius: 15)
          ]),
      child: Row(
        children: [
          Icon(iconD, color: kPrimeryColor),
          SizedBox(width: 15),
          Expanded(
              child: TextField(
            obscureText: passType,
            // controller: txtC,
            textInputAction: textAction,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: kPrimeryColor.withOpacity(0.5)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ))
        ],
      ),
    );
  }
}
