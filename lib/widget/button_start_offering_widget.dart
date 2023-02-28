

import 'package:belajar_slicing_ui/ui/menu_food_screen.dart';
import 'package:flutter/material.dart';

Widget buildStartOfferingBtn() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MenuFoodScreen()),
        );
      },
      child: Text(
        "Start odering",
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
