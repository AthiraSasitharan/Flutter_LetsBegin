import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/BaseUtilis.dart';
import 'package:flutter_lets_begin/LoginScreen.dart';
import 'package:flutter_lets_begin/Res.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  SplashPage createState() => new SplashPage();
}

class SplashPage extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateView(),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      loadNext(context);
    });
  }
}

class CreateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/starters.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              loadNext(context);
            },
            child: Text(
              Strings.appName,
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void loadNext(BuildContext context) {
  Navigator.push(
      context, new MaterialPageRoute(builder: (context) => LoginScreen())
  );
}
