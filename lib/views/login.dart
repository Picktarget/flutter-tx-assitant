import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final logo = new Container(
    padding: EdgeInsets.only(top: 60),
    child: new Center(
        child: Image.asset(
      'images/logo.png',
      width: 240,
      height: 100,
    )),
  );

  final username = new TextFormField(
    validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
  );

  final password = new TextFormField(
    validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new ListView(
        children: <Widget>[
          new Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  logo,
                  username,
                  SizedBox(height: 40.0),
                  password,
                  SizedBox(height: 40.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState.validate()) {
                          // Process data.
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
