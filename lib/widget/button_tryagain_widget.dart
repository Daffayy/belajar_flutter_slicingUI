import 'package:flutter/material.dart';

Widget buildtryagainbutton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print("Start try again pressed"),
        child: Text(
          " Try again ",
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
          ),
          minimumSize: Size(100.0, 60.0),
        ),
      ),
    );
  }
