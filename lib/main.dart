import 'package:flutter/material.dart';
import 'package:tx_assitant/routes/route.dart';
import 'package:tx_assitant/services/auth-service.dart';
import 'package:tx_assitant/views/home.dart';
import 'package:tx_assitant/views/login.dart';

AuthService appAuth = new AuthService();
// Set default home.
Widget _defaultHome = Login();
void main() async {
  // Get result of the login function.
  bool _result = await appAuth.login();
  if (_result) {
    _defaultHome = new Home();
  }
  runApp(MyApp());
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Tx Assitant';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        theme: ThemeData(fontFamily: 'Microsoft YaHei'),
        home: _defaultHome,
        routes: routes);
  }
}
