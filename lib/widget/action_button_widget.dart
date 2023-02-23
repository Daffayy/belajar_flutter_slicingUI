import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget ({Key? key, required this.buttonAction}) : super(key: key);
  final String buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print("Confirm proses"),
        child: Text(
          buttonAction,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),
          ),
          minimumSize: Size(314.0, 70.0),
        ),
      ),
    );
  }
}
