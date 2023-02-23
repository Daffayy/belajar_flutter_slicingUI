import 'package:flutter/material.dart';

Widget buildLoginBtn () {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: ElevatedButton(

      onPressed: () => print("Login pressed"),
      child: Text(
        "LOGIN",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
        ),
        minimumSize: Size(150.0, 50.0),
      ),
    ),
  );
}