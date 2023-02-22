import 'package:flutter/material.dart';
import '../widget/button_forgot.dart';
import '../widget/button_login.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicatorColor: Colors.deepOrange,
      tabs: <Widget>[
        Tab(child: Text("Login", style: TextStyle(color: Colors.black))),
        Tab(child: Text("Sign-up", style: TextStyle(color: Colors.black))),
      ],
    );
    return MaterialApp(
        theme: ThemeData(),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom:PreferredSize(
                preferredSize: Size.fromHeight(280),
                child: Container(color: Colors.white,child: myTabBar,),
              ),
            backgroundColor: Colors.white,
          ),
            backgroundColor: Colors.white70,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/login_logo.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Email Adreess",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,

                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukan Email",
                    ),
                    style: TextStyle(color: Colors.black),
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
                    decoration: InputDecoration(hintText: "Password"),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  buildForgotPassBtn(),
                  buildLoginBtn(),
                ],
              ),
            ),
          ),
        ));
  }
}
