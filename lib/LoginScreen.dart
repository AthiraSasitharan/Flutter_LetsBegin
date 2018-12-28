import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/Res.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateView(),
    );
  }
}

class CreateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(40, 4, 40, 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                Strings.welcomeMessage,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: Strings.mobileNumber,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4),
                  /*icon: Icon(
                    Icons.phone,
                    color: Colors.purple,
                  ),*/
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: Strings.password,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4),
                ),
                obscureText: true,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: CircleAvatar(
                  child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                Strings.register,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.purple,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
