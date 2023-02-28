import 'package:belajar_slicing_ui/ui/menu_food_screen.dart';
import 'package:flutter/material.dart';
import 'package:belajar_slicing_ui/utilities/color_schema.dart';



class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Stack(
          children: [ Text (
            "History",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold , fontSize: 18,
              fontFamily: "SFprotext/SF-Pro-Text-Semibold",
              color: Colors.black,
            ),),
          ]
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 272.92,),
              Image.asset(
                "assets/History.png", width: 106.5, height: 118.33,),
              SizedBox(
                height: 26.75,

              ),
              Text(
                "No History yet", style: TextStyle(fontSize: 28,fontFamily: "SFprotext"),
              ),
              SizedBox(
                height:17 ,
              ),
              Text(
                  "Hit the orange button down\n  below to Create an order",
                style: TextStyle(fontSize: 17,fontFamily: "SFprotext/SF-Pro-Text-Regular.otf"),
              ),
              SizedBox(height: 150,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => MenuFoodScreen(), )
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: deepRed700,
                  ),
                  child: Text(
                    "Start odering",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
