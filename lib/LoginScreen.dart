import 'package:flutter/material.dart';
import 'package:flutter_lets_begin/Res.dart';

final formValidationKey = GlobalKey<FormState>();

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
        child: Form(
          key: formValidationKey,
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
                validator: (value){
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
                  if (formValidationKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
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
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  final _text = TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Error Showed if Field is Empty on Submit button Pressed'),
            TextField(
              controller: _text,
              decoration: InputDecoration(
                labelText: 'Enter the Value',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            RaisedButton(
              onPressed: () {
                validate();
              },
              child: Text('Submit'),
              textColor: Colors.white,
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }

  void validate(){
    setState(() {
      _text.text.isEmpty ? _validate = true : _validate = false;
    });
  }
}
*/
