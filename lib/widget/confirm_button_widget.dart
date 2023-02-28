import 'package:flutter/material.dart';

class ActionButtonConfirmWidget extends StatelessWidget {
  const ActionButtonConfirmWidget({Key? key, required this.buttonAction})
      : super(key: key);
  final String buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          print("Confirm proses");
          showDialog(
            context: context,
            builder: (context) {
              return  Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                backgroundColor: Colors.amberAccent,
                child: Container(
                  height: 400.0,
                  width: 500.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20,),
                      Text("Please Note ", style: TextStyle
                        (fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "SFprotext/SF-Pro-Text-Regular",),),
                      SizedBox(
                        width: 10,
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal:
                        30),
                        child: Column(
                          children: [
                            ListTile(
                              title: Container(
                                child: Wrap(
                                  children: [
                                    Container(
                                      child: Text(
                                        "DELIVERY TO MAINLAND",
                                        style: TextStyle(fontSize: 15,fontFamily:"SFprotext/SF-Pro-Text-Regular" ,color:
                                        Colors.grey),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      child: Text("N1000 - N2000", style:
                                      TextStyle(fontSize: 17),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(color: Colors.black26, indent: 15,
                                endIndent: 30),
                            ListTile(
                              title: Container(
                                child: Wrap(
                                  children: [
                                    Container(
                                      child: Text(
                                        "DELIVERY TO ISLAND",
                                        style: TextStyle(fontSize: 15,fontFamily:"SFprotext/SF-Pro-Text-Regular" ,color:
                                        Colors.grey),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      child: Text("N2000 - N3000",style:
                                      TextStyle(fontSize: 17),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal:
                        5),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: (){
                                          print("Confirm cancel press");
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30.0),
                                          ),
                                          minimumSize: Size(50.0, 60.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  TextButton(
                                                    onPressed: (){
                                                      print("Confirm proceed press");
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text(
                                                      "Proceed",
                                                      style: TextStyle(color: Colors.grey),
                                                    ),
                                                    style: TextButton.styleFrom(
                                                      backgroundColor: Colors.deepOrange,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(30.0),
                                                      ),
                                                      minimumSize: Size(100.0,
                                                          60.0),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Text(
          buttonAction,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          minimumSize: Size(314.0, 70.0),
        ),
      ),
    );
  }
}
