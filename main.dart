import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Color color = Color.fromARGB(255, 0, 148, 5);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(color: color),
              prefixIconColor: color,
              suffixIconColor: color,
              filled: true,
              fillColor: Color.fromARGB(80, 255, 255, 255),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: color, width: 2),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: color, width: 2),
                  borderRadius: BorderRadius.circular(30))),
          textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              headlineMedium: TextStyle(fontSize: 20, color: Colors.white),
              headlineSmall: TextStyle(fontSize: 15, color: Colors.white))),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: Size.infinite.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/b.jpg"), fit: BoxFit.cover)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "lib/images/logo.png",
                  width: 150,
                ),
                Text(
                  "LOGIN",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Come with Your ID\n",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  TextSpan(
                    text: "         this for secured",
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ])),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: "Email or Name",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: "Password",
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                      backgroundColor: Color.fromARGB(255, 0, 148, 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                Text(
                  "Forgot Password",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "-- OR --",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Not Member? "),
                  TextSpan(
                      text: "SIGN UP ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 148, 5),
                          fontWeight: FontWeight.bold))
                ])),
              ]),
        ),
      ),
    );
  }
}
