import 'package:flutter/material.dart';
import 'package:tx_assitant/routes/route.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        theme: ThemeData(fontFamily: 'Microsoft YaHei'),
        initialRoute: '/login',
        routes: routes);
  }
}
