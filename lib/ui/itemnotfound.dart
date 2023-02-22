import 'package:flutter/material.dart';



class ItemNotFound extends StatefulWidget {
  const ItemNotFound({Key? key}) : super(key: key);

  @override
  State<ItemNotFound> createState() => _ItemNotFoundState();
}

class _ItemNotFoundState extends State<ItemNotFound> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          title: Container(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search here..",
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
                "assets/feather_search.png",
                width: 106.5,
                height: 118.33,
              ),
              SizedBox(
                height: 26.75,
              ),
              Text(
                "Item not found",
                style: TextStyle(fontSize: 28, fontFamily: "SFprotext"),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "Try searching the item with\n     a different keyword.",
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "SFprotext/SF-Pro-Text-Regular.otf"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
