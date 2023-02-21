import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : Homepage(),
  )
  );
}

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
Widget buildLoginBtn (){
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
      ),
    ),
  );
}




class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),

            child: Image.asset("assets/login_logo.png"),
          ),

          SizedBox(height: 10),
          Text(
            "Email Adreess user",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),

          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Password",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Password"
            ),
          ),
          SizedBox(height: 10),
          buildForgotPassBtn(),
          buildLoginBtn(),
        ],
      ),

    );
  }
}
