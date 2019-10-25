import 'package:flutter/material.dart';
import 'package:tx_assitant/styles/input.dart';

import '../main.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static final _formKey = GlobalKey<FormState>();
  String _status = 'no-action';
  @override
  Widget build(BuildContext context) {
    final logo = new Padding(
      padding: EdgeInsets.symmetric(vertical: 60),
      child: new Center(
          child: Image.asset(
        'images/logo.png',
        width: 220,
        height: 90,
        fit: BoxFit.cover,
      )),
    );

    final username = new Container(
        margin: EdgeInsets.fromLTRB(32, 0, 32, 0),
        child: new TextFormField(
          decoration: new InputDecoration(
              prefixIcon: Icon(Icons.phone_iphone, color: primary),
              hintText: '请输入手机号码',
              contentPadding: contentPadding,
              hintStyle: hintStyle,
              border: border,
              errorBorder: errorBorder,
              enabledBorder: enabledBorder,
              focusedBorder: focuseBorder,
              focusedErrorBorder: focusErrorBorder),
          style: textStyle,
          maxLines: 1,
          keyboardType: TextInputType.number,
          autocorrect: true,
          cursorColor: primary,
          validator: (value) {
            if (value.isEmpty) {
              return '请输入手机号码';
            }
            return null;
          },
        ));

    final password = new Container(
        margin: EdgeInsets.fromLTRB(32, 0, 32, 0),
        child: new TextFormField(
          decoration: new InputDecoration(
              prefixIcon: Icon(Icons.lock, color: primary),
              hintText: '请输入密码',
              contentPadding: contentPadding,
              hintStyle: hintStyle,
              border: border,
              errorBorder: errorBorder,
              enabledBorder: enabledBorder,
              focusedBorder: focuseBorder,
              focusedErrorBorder: focusErrorBorder),
          style: textStyle,
          maxLines: 1,
          keyboardType: TextInputType.number,
          autocorrect: true,
          obscureText: true,
          cursorColor: primary,
          validator: (value) {
            if (value.isEmpty) {
              return '请输入登录密码';
            }
            return null;
          },
        ));

    final submitBtn = new Padding(
      padding: EdgeInsets.fromLTRB(32, 32, 32, 10),
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 44.0,
        child: new RaisedButton(
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
                appAuth.login().then((res) {
                  if (res) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    setState(() => this._status = 'rejected');
                  }
                });
              }
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0)),
            color: primary,
            child: Text('登录',
                style: TextStyle(color: Colors.white, fontSize: 14.0))),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF9254DE),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                logo,
                username,
                SizedBox(height: 14.0),
                password,
                submitBtn,
                SizedBox(
                  width: 200,
                  height: 26.0,
                  child: FlatButton(
                    onPressed: null,
                    padding: EdgeInsets.all(4.0),
                    child: Text('注册账号', style: TextStyle(color: primary)),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 26.0,
                  child: FlatButton(
                    onPressed: null,
                    padding: EdgeInsets.all(4.0),
                    child: Text('忘记密码', style: TextStyle(color: primary)),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 26.0,
                  child: FlatButton(
                    onPressed: null,
                    padding: EdgeInsets.all(4.0),
                    child: Text('在线客服', style: TextStyle(color: primary)),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
