import 'package:belajar_slicing_ui/widget/action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:belajar_slicing_ui/widget/button_start_offering_widget.dart';



class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Stack(children: [
            Text(
              "Orders",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: "SFprotext/SF-Pro-Text-Semibold",
                color: Colors.black,
              ),
            ),
          ]),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 272.92,
              ),
              Image.asset(
                "assets/Group 66.png",
                width: 106.5,
                height: 118.33,
              ),
              SizedBox(
                height: 26.75,
              ),
              Text(
                "No Orders yet",
                style:
                TextStyle(fontSize: 28, fontFamily: "SFprotext",fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "Hit the orange button down\n  below to Create an order",
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "SFprotext/SF-Pro-Text-Regular.otf"),
              ),
              SizedBox(
                height: 150,
              ),
              ActionButtonWidget(buttonAction: "Order")
            ],
          ),
        ),
      ),
    );
  }
}
