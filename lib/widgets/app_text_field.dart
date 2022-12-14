import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppTextField extends StatelessWidget {
  final Color color;
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;

  const AppTextField({Key? key, required this.textEditingController, required this.icon, required this.hintText, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1, 10),
                color: Colors.grey.withOpacity(0.2)
            )
          ]
      ),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          //hintText
            hintText: hintText,
            //prefixIcon
            prefixIcon: Icon(
              icon,
              color: color,
            ),
            //focusedBorder
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )),
            //enabledBorder
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )),
            //border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
            )),

      ),
    );
  }
}
