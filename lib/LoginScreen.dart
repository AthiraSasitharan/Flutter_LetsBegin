import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/HomeScreen.dart';
import 'package:flutter_lets_begin/utils/Res.dart';

final formValidationKey = GlobalKey<FormState>();
bool autoValidate = false;

class LoginScreen extends StatefulWidget {
  @override
  LoginPage createState() {
    return LoginPage();
  }
}

class LoginPage extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 4, 40, 4),
          child: Form(
            key: formValidationKey,
            autovalidate: autoValidate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  Strings.welcomeMessage,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != null && value?.isEmpty) {
                      return Strings.errorMobileNumberRequired;
                    } else if (value.length != 10) {
                      return Strings.errorInvalidMobileNumber;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: Strings.mobileNumber,
                    contentPadding: EdgeInsets.symmetric(horizontal: 4),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != null && value?.isEmpty) {
                      return Strings.errorPasswordRequired;
                    }
                  },
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
                SizedBox(
                  height: 30,
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      autoValidate = true;
                    });
                    if (formValidationKey.currentState.validate()) {
                      loadNext(context);
                    }
                  },
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  Strings.register,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.purple,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void loadNext(BuildContext context) {
  Navigator.push(
      context, new MaterialPageRoute(builder: (context) => HomeScreen()));
}
