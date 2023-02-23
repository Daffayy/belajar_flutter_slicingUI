import 'package:flutter/material.dart';

Widget buildForgotPassBtn(){
  return Container(
    alignment: Alignment.centerLeft,
    child: Text(
      "Forgot passcode?",
      style: TextStyle(
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
